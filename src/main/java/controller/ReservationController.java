package controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

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
import util.DateParse;

public class ReservationController extends MskimRequestMapping {
	ReservationDao dao = new ReservationDao();
	
	@RequestMapping("reservationList")
	public String reservationList(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(); //session을 불러옴. 
		String email = (String)session.getAttribute("email");
		String picLocation = null;
		
		List<Booking> bookingList = dao.getBookingSelectList(email);
		Map<Integer, String> picMap = new HashMap<Integer, String>();
		
		for(Booking booking : bookingList) {
			picLocation = dao.bookingPictureList(booking.getRo_num()).get(0).getLocation();
			picMap.put(booking.getRo_num(), picLocation);
		}
		
		request.setAttribute("picMap", picMap);
		request.setAttribute("bookingList", bookingList);
		
		return "/view/reservationList/reservationList.jsp";
	}
	
	@RequestMapping("reservationDetail")
    public String reservationDetail (HttpServletRequest request, HttpServletResponse response) {
        String flag = request.getParameter("flag");
        String bo_num = request.getParameter("bo_num");
        String email = (String) request.getSession().getAttribute("email");
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
        MemberDao md = new MemberDao();
        Member m = md.selectMemberOne(email);
        
        request.setAttribute("member", m);
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
	public String detail(HttpServletRequest request, HttpServletResponse response) throws java.text.ParseException {
		ReserveDao reserveDao = new ReserveDao();
		MemberDao md = new MemberDao();
		RoomDao rd = new RoomDao();
		SearchDao sd = new SearchDao();
		DateParse dateParse = new DateParse();
		
		String bu_email = request.getParameter("bu_email");
		String ro_count = request.getParameter("ro_count");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		String today = dateParse.getTodayPlus(0);
		String tomorrow = dateParse.getTodayPlus(1);
		
		Business bu = md.selectBusinessOne(bu_email); // 사업자, 숙소 정보 받아오기
		List<Picture> buPicList = sd.sbPicList(bu.getPic_num()); // 숙소 사진
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("bu_email", bu_email); 	map.put("ro_count", ro_count);
		map.put("checkin", dateParse.dateToStr(checkin)); 	map.put("checkout", dateParse.dateToStr(checkout));
		
		// 룸 정보 + 기간 내 중복 받아오기
		List<Room> roomList = reserveDao.overlapRoomList(map); 
		
		// 방 사진 가져오기
		Map<Integer, Object> roomPicMap = new HashMap<>();
		List<Picture> picList = new ArrayList<Picture>();
		
		for(Room room : roomList) {
			picList = rd.selectPic(room.getPic_num());
			// 방의 첫번째로 등록한 사진이 걸림
			roomPicMap.put(room.getRo_num(), picList.get(0).getLocation().trim());
		}
		
		request.setAttribute("buPicList", buPicList);		
		request.setAttribute("roomPicMap", roomPicMap);
		request.setAttribute("roomList", roomList);
		request.setAttribute("bu", bu);
		request.setAttribute("ro_count", ro_count);
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		request.setAttribute("today", dateParse.strToDate(today));
		request.setAttribute("tomorrow", dateParse.strToDate(tomorrow));
		
		return "/view/reserve/detail.jsp";
	}
	
	@RequestMapping("reserve")
	public String reserve(HttpServletRequest request, HttpServletResponse response) {
		String email = (String) request.getSession().getAttribute("email");
		if(email == null) {
			request.setAttribute("url", request.getContextPath()+"/member/loginForm");
			request.setAttribute("msg", "로그인이 필요한 서비스입니다.");
			return "/view/alert.jsp";
		}
		
		Booking bo = new Booking();
		MemberDao md = new MemberDao();
		DateParse dateParse = new DateParse();
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		int night = dateParse.dateDif(checkin, checkout); // (checkout-checkin)-1
		String price = (Integer.parseInt(request.getParameter("price")) * night)+"" ;
		System.out.println(price);
		
		bo.setEmail((String) request.getSession().getAttribute("email"));
		bo.setCheckin(checkin);
		bo.setCheckout(checkout);
		bo.setPrice(price);
		bo.setBu_title(request.getParameter("bu_title"));
		bo.setRo_name(request.getParameter("ro_name"));
		bo.setRo_num(Integer.parseInt(request.getParameter("ro_num")));
		bo.setReg_date(dateParse.getTodayPlus(0));
		bo.setStatus(1);
		
		Member m = md.selectMemberOne(bo.getEmail());
		
		request.getSession().setAttribute("booking", bo);
		request.setAttribute("member", m);
		
		return "/view/reserve/reserve.jsp";
	}
	
	@RequestMapping("reservePro")
	public String reservePro(HttpServletRequest request, HttpServletResponse response) {
		DateParse dateParse = new DateParse();
		Reserved r = new Reserved();
		ReserveDao rd = new ReserveDao();
		Booking bo = (Booking) request.getSession().getAttribute("booking");
		String bo_num = request.getParameter("bo_num");
		String payment = request.getParameter("payment");
		
		bo.setBo_num(bo_num);		
		bo.setPayment(payment);
		int result = rd.insertBooking(bo);
		System.out.println(result == 0 ? "예약 실패" : "예약 성공");
		request.getSession().removeAttribute("booking");
		
		// 날짜 차이 계산
		int dif = dateParse.dateDif(bo.getCheckin(), bo.getCheckout());
		
		// 체크인 날짜 ~ 체크아웃 날짜 -1
		for(int i=0; i<dif ;i++) {
			r = new Reserved(bo.getRo_num(), dateParse.datePlus(bo.getCheckin(), i));
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
			p_list.add(picList.get(i).getLocation());
		}
		
		System.out.println(p_list);
		
		// 선택한 객실의 정보를 가져와서 파싱 후 저장
		String info = room.getRo_info().replace("\r\n", "<br/>");
		
		request.setAttribute("p_list", p_list);
		request.setAttribute("room", room);
		request.setAttribute("ro_num", ro_num);
		request.setAttribute("pic_num", room.getPic_num());
		request.setAttribute("info", info);
		
		return "/common/roomDetail.jsp";
	}
	
	@RequestMapping("cancel")
	public String cancel(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {
		
		if(request.getSession().getAttribute("email") == null) {
			request.setAttribute("url", request.getContextPath()+"/member/loginForm");
			request.setAttribute("msg", "로그인이 필요한 서비스입니다.");
			return "/view/alert.jsp";
		}
		
		ReservationDao rd = new ReservationDao();
		ReserveDao reserveDao = new ReserveDao();
		String bo_num = request.getParameter("bo_num");
		rd.updateBookingStatus(bo_num); // 예약 상태 변경
		
		// 예약 중복 내역 삭제
		Booking b = rd.getBookingSelectDetail(bo_num);			System.out.println(b.getCheckout());
		int checkout = Integer.parseInt(b.getCheckout())-1; 	
		b.setCheckout(""+checkout);								System.out.println(b.getCheckout());
		int result = reserveDao.cancelReserveList(b);
		
		String url = request.getContextPath()+"/reservation/reservationList";
		String msg = "예약 취소를 실패했습니다.";
		
		if(result != 0) {
			msg = "예약이 취소되었습니다.";
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "/view/alert.jsp";
		}
		
		
		return "/view/alert.jsp";
	}
}
