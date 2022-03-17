package controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import model.Picture;
import model.Room;
import service.RoomDao;

public class RoomController extends MskimRequestMapping{

	private static Map<String, Object> map = new HashMap<String, Object>();
	
	// 객실정보 페이지
	
	@RequestMapping("roomlist")
	public String List(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String bu_email = (String) session.getAttribute("bu_email");
		
		RoomDao rd = new RoomDao();
		
		// business 메일을 사용하는 사업자의 객실 리스트 저장
		List<Room> list = rd.roomList(bu_email);
		
		List<Picture> pist = rd.picSelect(bu_email);
		
		
		request.setAttribute("list", list);
		request.setAttribute("pist", pist);
			
		return "/view/entrepreneur/roomlist.jsp";
	}
	
	
	// 객실등록 페이지
	@RequestMapping("roomInsert")
	public String roomInsert(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "/view/entrepreneur/roomInsert.jsp";
	}
	
	@RequestMapping("roomInsertPro")
	public String roomInsertPro(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		
		// 사업자가 로그인하면 세션에 bu_email을 키 값으로 저장 한걸 세션에서 가져온다
		HttpSession session = request.getSession();
		String bu_email = (String) session.getAttribute("bu_email");
		
		String path = getServletContext().getRealPath("/") + "/roomimgupload/";
		int size = 10 * 1024 * 1024;
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, path, size, "utf-8");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		RoomDao rd = new RoomDao();
		Room room = new Room();
		Picture p = new Picture();
		
		room.setRo_name(multi.getParameter("roName"));
		room.setBu_email(bu_email);
		room.setRo_price(multi.getParameter("roPrice"));
		room.setCheckin(multi.getParameter("checkIn"));
		room.setCheckout(multi.getParameter("checkOut"));
		room.setRo_count(multi.getParameter("roCount"));
		room.setRo_info(multi.getParameter("roomInfo").replace("\r\n", "<br/>"));
		p.setLocation(multi.getFilesystemName("picLocation"));
		
		p.setPic_num(rd.nextPicNum());
		room.setPic_num(p.getPic_num());
		
		room.setRo_num(rd.nextRoNum());
		
		// room객체에 저장된 값을 room table에 저장
		int rnum = rd.insertRoom(room);
		
		// p객체에 picture table에 저장
		rd.insertPicture(p);
		
		String msg = "객실 등록시 오류가 발생했습니다.";
		String url = request.getContextPath() + "/room/roomInsert?bu_email="+bu_email;
		
		
		if(rnum > 0) {
			msg = "객실 등록이 완료되었습니다.";
			url = request.getContextPath() + "/room/roomlist?bu_email="+bu_email;
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "/view/alert.jsp";
		
	}
	
	
	@RequestMapping("roominfo")
	public String roominfo(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String bu_email = (String) session.getAttribute("bu_email");
		
		String pic_num = request.getParameter("pic_num");
		map.clear();
		map.put("bu_email", bu_email);
		map.put("pic_num", pic_num);
		
		
		RoomDao rd = new RoomDao();
		
		Room room = rd.selectRoom(map);
		
		request.setAttribute("room", room);
		
		
		return "/view/entrepreneur/roominfo.jsp";
	}
	
	
	@RequestMapping("roomUpdate")
	public String roomUpdate(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "/view/entrepreneur/roomUpdate.jsp";
	}
	
	@RequestMapping("reservation")
	public String reservation(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "/view/entrepreneur/reservation.jsp";
	}
	
}
