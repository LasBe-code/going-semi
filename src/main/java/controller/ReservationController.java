package controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Booking;
import model.Business;
import model.Member;
import model.Picture;
import model.Reserved;
import model.Room;
import service.MemberDao;
import service.ReservationDao;
import service.ReserveDao;
import service.RoomDao;
import service.SearchDao;

public class ReservationController extends MskimRequestMapping {
	ReservationDao dao = new ReservationDao();
	
	@RequestMapping("reservationList")
	public String reservationList(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession(); //session을 불러옴. 
		String email = (String)session.getAttribute("email");
		List<Booking> bookingList = dao.getBookingSelectList(email);
		
		
		
		request.setAttribute("bookingList", bookingList);
		
		return "/view/reservationList/reservationList.jsp";
	}
	
	@RequestMapping("reservationDetail")
	public String reservationDetail (HttpServletRequest request, HttpServletResponse response) {
		String flag = request.getParameter("flag");
		String bo_num = request.getParameter("bo_num");
		System.out.println(bo_num);
		//bo_num이 getParameter로 넘어왔기때문에 반환형이 String이다/ 그런데 테이블에선 int이므로 String으로 형변환을 해줘야하는데 Integer.parseInt이렇게 써줘야 한다.
		
		boolean f = Boolean.valueOf(flag);
		//flag 값이 true => 예약 상세내역 정보. false => 취소 내역 정보.
		if (f == false){
			//상태값 변경 1=> 2
			dao.updateBookingStatus(bo_num);
		}
		
		//bo_num으로 select 
		Booking bookingDetail = dao.getBookingSelectDetail(bo_num);
		request.setAttribute("bookingDetail", bookingDetail);
		
		return "/view/reservationList/reservationDetail.jsp";
	}
	
	/*
	@RequestMapping("reservationCancelDetail")
	public String reservationCencelDetail(HttpServletRequest request, HttpServletResponse response) {
		return "/view/reservationList/reservationCancelDetail.jsp";
	}
	*/
	
	@RequestMapping("detail")
	public String detail(HttpServletRequest request, HttpServletResponse response) {
		ReserveDao reserveDao = new ReserveDao();
		MemberDao md = new MemberDao();
		RoomDao rd = new RoomDao();
		SearchDao sd = new SearchDao();
		
		String bu_email = request.getParameter("bu_email");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		String ro_count = request.getParameter("ro_count");
		
		/*
		 * String bu_email = "test@naver.com"; String checkin = "20220304"; String
		 * checkout = "20220307"; String ro_count = "1";
		 */
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("bu_email", bu_email); map.put("ro_count", ro_count);
		
		List<Room> roomList = reserveDao.roomList(map); // 룸 정보 받아오기
		Business bu = md.selectBusinessOne(bu_email); // 사업자, 숙소 정보 받아오기
		List<Picture> buPicList = sd.sbPicList(bu.getPic_num());
		
		Map<Integer, Boolean> roomMap = new HashMap<>();
		for(Room r : roomList) {
			map.put("ro_num", ""+r.getRo_num()); map.put("checkin", checkin); map.put("checkout", String.valueOf(Integer.parseInt(checkout)-1));
			// 방마다 예약 체크
			List<Reserved> list = reserveDao.reserveCheck(map);
			System.out.println(r.getRo_num()); System.out.println(list);
			if(list.isEmpty()) { // 예약된 정보가 없으면 false
				roomMap.put(r.getRo_num(), false);
			} else { // 예약이 되어 있으면 true
				roomMap.put(r.getRo_num(), true); 
			}
			
		}
		
		Map<Integer, Object> roomPicMap = new HashMap<>();
		List<Picture> picList = new ArrayList<Picture>();
		
		for(Room room : roomList) {
			picList = rd.selectPic(room.getPic_num());
			System.out.println(picList);
			roomPicMap.put(room.getRo_num(), picList.get(0).getLocation().trim());
			System.out.println(picList.get(0).getLocation().trim());
		}
		
		System.out.println("business : "+bu);
		System.out.println("roomList : "+roomList);
		System.out.println("roomMap : "+roomMap);
		System.out.println("buPicList : "+buPicList);
		
		request.setAttribute("roomPicMap", roomPicMap);
		request.setAttribute("roomList", roomList);
		request.setAttribute("roomMap", roomMap);
		request.setAttribute("bu", bu);
		request.setAttribute("ro_count", ro_count);
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		
		return "/view/reserve/detail.jsp";
	}
	
	@RequestMapping("reserve")
	public String reserve(HttpServletRequest request, HttpServletResponse response) {
		Booking bo = new Booking();
		ReserveDao rd = new ReserveDao();
		MemberDao md = new MemberDao();
		
		// =========== 현재 시간 ==============
		LocalDate now = LocalDate.now();
		// 포맷 정의
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		// 포맷 적용
		String nowDay = now.format(formatter);

		
		bo.setEmail((String) request.getSession().getAttribute("email"));
		bo.setCheckin(request.getParameter("checkin"));
		bo.setCheckout(request.getParameter("checkout"));
		bo.setPrice(request.getParameter("price"));
		bo.setBu_title(request.getParameter("bu_title"));
		bo.setRo_name(request.getParameter("ro_name"));
		bo.setRo_num(Integer.parseInt(request.getParameter("ro_num")));
		bo.setReg_date(nowDay);
		bo.setStatus(1);
		
		Member m = md.selectMemberOne(bo.getEmail());
		
		request.getSession().setAttribute("booking", bo);
		request.setAttribute("member", m);
		
		return "/view/reserve/reserve.jsp";
	}
	
	@RequestMapping("reservePro")
	public String reservePro(HttpServletRequest request, HttpServletResponse response) {
		String bo_num = request.getParameter("bo_num");
		String payment = request.getParameter("payment");
		System.out.println(bo_num+", "+payment);
		
		Booking bo = (Booking) request.getSession().getAttribute("booking");
		
		bo.setBo_num(bo_num);		bo.setPayment(payment);
		
		ReserveDao rd = new ReserveDao();
		
		int result = rd.insertBooking(bo);
		
		System.out.println(bo);
		System.out.println(result);
		
		int icheckin = Integer.parseInt(bo.getCheckin());
		int icheckout = Integer.parseInt(bo.getCheckout());
		Reserved r = new Reserved();
		
		for(int i=icheckin; i<icheckout ;i++) {
			r = new Reserved(bo.getRo_num(), String.valueOf(i));
			System.out.println(r);
			rd.insertReserved(r);
		}
		
		return "/view/reservationList/reservationList.jsp";
	}
	
	@RequestMapping("roomDetail")
	public String roomDetail(HttpServletRequest request, HttpServletResponse response) {
		
		RoomDao rd = new RoomDao();
		int ro_num = Integer.parseInt(request.getParameter("ro_num"));
		Room room = rd.selectRoom(ro_num);
		
		List<Picture> picList = rd.selectPic(room.getPic_num());
		List<String> p_list = new ArrayList<String>();
		for(int i=0; i<picList.size();i++) {
			if(i==0) {
				request.setAttribute("picMain", picList.get(i).getLocation());
				System.out.println(picList.get(i).getLocation());
				} else {
				p_list.add(picList.get(i).getLocation());
			}
		}
		
		System.out.println(p_list);
		
		// 선택한 객실의 정보를 가져와서 저장
		
		String info = room.getRo_info().replace("\r\n", "<br/>");
		
		request.setAttribute("p_list", p_list);
		request.setAttribute("room", room);
		request.setAttribute("ro_num", ro_num);
		request.setAttribute("pic_num", room.getPic_num());
		request.setAttribute("info", info);
		
		return "/view/reserve/roomDetail.jsp";
	}
}
