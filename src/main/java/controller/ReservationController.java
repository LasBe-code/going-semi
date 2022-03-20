package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Booking;
import service.ReservationDao;

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
	
	
	
	
	
	
	
	
}
