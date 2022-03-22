package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Booking;
import model.Business;
import model.Reserved;
import model.Room;
import service.MemberDao;
import service.ReservationDao;
import service.ReserveDao;

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
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
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
		
//		String bu_email = request.getParameter("bu_email");
//		String checkin = request.getParameter("checkin");
//		String checkout = request.getParameter("checkout");
//		String ro_count = request.getParameter("ro_count");
		
		String bu_email = "aaa@naver.com";
		String checkin = "20220311";
		String checkout = "20220317";
		String ro_count = "2";
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("bu_email", bu_email); map.put("ro_count", ro_count);
		
		List<Room> roomList = reserveDao.roomList(map); // 룸 정보 받아오기
		Business bu = md.selectBusinessOne(bu_email); // 사업자, 숙소 정보 받아오기
		
		Map<Integer, Boolean> roomMap = new HashMap<>();
		
		for(Room r : roomList) {
			map.put("ro_num", ""+r.getRo_num()); map.put("checkin", checkin); map.put("checkout", String.valueOf(Integer.parseInt(checkout)-1));
			// 방마다 예약 체크
			Reserved reserved = reserveDao.reserveCheck(map);
			System.out.println(r.getRo_num()); System.out.println(reserved);
			if(reserved == null) { // 예약된 정보가 없으면 false
				roomMap.put(r.getRo_num(), false);
			} else { // 예약이 되어 있으면 true
				roomMap.put(r.getRo_num(), true); 
			}
			
		}
		
		System.out.println(bu);
		System.out.println(roomList);
		System.out.println(roomMap);
		
		request.setAttribute("roomList", roomList);
		request.setAttribute("roomMap", roomMap);
		request.setAttribute("bu", bu);
		request.setAttribute("ro_count", ro_count);
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		
		return "/view/reserve/detail.jsp";
	}
	
	
	
	
	
	
}
