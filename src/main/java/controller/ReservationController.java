package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReservationController extends MskimRequestMapping {
	@RequestMapping("reservationList")
	public String loginForm(HttpServletRequest request, HttpServletResponse response) {
		return "/view/reservation/reservationList.jsp";
	}
}
