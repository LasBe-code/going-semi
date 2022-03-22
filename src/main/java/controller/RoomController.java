package controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import model.Booking;
import model.Business;
import model.Picture;
import model.Room;
import service.RoomDao;

public class RoomController extends MskimRequestMapping{

	private static Map<String, Object> map = new HashMap<String, Object>();
	
	// 객실정보 페이지
	
	@RequestMapping("roomlist")
	public String List(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		HttpSession session = request.getSession(); 
		String bu_email =(String)session.getAttribute("bu_email");
		 
		
		RoomDao rd = new RoomDao();
		
		// business 메일을 사용하는 사업자의 객실 리스트 저장
		List<Room> list = rd.roomList(bu_email);
		System.out.println(list);
		request.setAttribute("list", list);
			
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
		String bu_email =(String)session.getAttribute("bu_email");
		 
		
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
		room.setRo_info(multi.getParameter("roomInfo"));
		p.setLocation(multi.getParameter("picLocation"));
		
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
		String bu_email =(String)session.getAttribute("bu_email");
		 
		
		String ro_num = request.getParameter("ro_num");
		map.clear();
		map.put("bu_email", bu_email);
		map.put("ro_num", ro_num);
		
		
		RoomDao rd = new RoomDao();
		// 슬라이드에 나올 처음사진
		String picMain = rd.picMain(map);
		
		// 슬라이드에 나올 다음 사진들
		String picList = rd.picList(map);
		String[] pic = picList.split(",\r\n");
		
		List<String> p_list = Arrays.asList(pic);
		
		// 선택한 객실의 정보를 가져와서 저장
		Room room = rd.selectRoom(map);
		String info = room.getRo_info().replace("\r\n", "<br/>");
		
		request.setAttribute("picMain", picMain);
		request.setAttribute("p_list", p_list);
		request.setAttribute("room", room);
		request.setAttribute("ro_num", ro_num);
		request.setAttribute("pic_num", room.getPic_num());
		request.setAttribute("info", info);
		
		return "/view/entrepreneur/roominfo.jsp";
	}
	
	
	@RequestMapping("roomUpdate")
	public String roomUpdate(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		
		HttpSession session = request.getSession(); 
		String bu_email =(String)session.getAttribute("bu_email");
		 
		 
		String ro_num = request.getParameter("ro_num");
		String pic_num = request.getParameter("pic_num");
		
		map.clear();
		map.put("ro_num", ro_num);
		map.put("bu_email", bu_email);
		
		
		RoomDao rd = new RoomDao();
		
		
		Room room = rd.selectRoom(map);
		Picture pic = rd.selectPic(map);
		
		request.setAttribute("pic_num", pic_num);
		request.setAttribute("room", room);
		request.setAttribute("ro_num", ro_num);
		request.setAttribute("pic", pic);
		
		return "/view/entrepreneur/roomUpdate.jsp";
	}
	
	
	@RequestMapping("roomUpdatePro")
	public String roomUpdatPro(HttpServletRequest request, HttpServletResponse response) {
		
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		
		// 사업자가 로그인하면 세션에 bu_email을 키 값으로 저장 한걸 세션에서 가져온다
		
		
		HttpSession session = request.getSession(); 
		String bu_email =(String)session.getAttribute("bu_email");
		 
		
		String ro_num = request.getParameter("ro_num");
		String pic_num = request.getParameter("pic_num");
		
		String path = getServletContext().getRealPath("/") + "/roomimgupload/";
		int size = 10 * 1024 * 1024;
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, path, size, "utf-8");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		map.clear();
		map.put("bu_email", bu_email);
		map.put("ro_num", ro_num);
		
		RoomDao rd = new RoomDao();
		Room room = rd.selectRoom(map);
		Picture p = rd.selectPic(map);
		
		room.setRo_name(multi.getParameter("roName"));
		room.setBu_email(bu_email);
		room.setRo_price(multi.getParameter("roPrice"));
		room.setCheckin(multi.getParameter("checkIn"));
		room.setCheckout(multi.getParameter("checkOut"));
		room.setRo_count(multi.getParameter("roCount"));
		room.setRo_info(multi.getParameter("roomInfo"));
		p.setLocation(multi.getParameter("picLocation"));
		
		if(multi.getParameter("picLocation") == null && multi.getParameter("picLocation").equals("")) {
			p.setLocation(p.getLocation());
		}else {
			p.setLocation(multi.getParameter("picLocation"));
		}
		
		// room객체에 저장된 값을 room table에 저장
		int rnum = rd.updateRoom(room);
		
		
		// p객체에 저장된 값을 picture table에 저장
		int pic = rd.updatePicture(p);
		
		String msg = "객실 수정시 오류가 발생했습니다.";
		String url = request.getContextPath() + "/room/roomUpdate?ro_num="+ro_num+"&pic_num="+pic_num;
		
		
		if(rnum > 0 && pic > 0) {
			msg = "객실 수정이 완료되었습니다.";
			url = request.getContextPath() + "/room/roomlist?bu_email="+bu_email;
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		
		return "/view/alert.jsp";
	}
	
	
	@RequestMapping("roomDelete")
	public String roomDelete(HttpServletRequest request, HttpServletResponse response) {
		
		String ro_num = request.getParameter("ro_num");
		
		request.setAttribute("ro_num", ro_num);
		
		return "/view/entrepreneur/roomDelete.jsp";
	}
	
	
	@RequestMapping("roomDeletePro")
	public String roomDeletePro(HttpServletRequest request, HttpServletResponse response) {
		
		
		// 사업자가 로그인하면 세션에 bu_email을 키 값으로 저장 한걸 세션에서 가져온다
		
		
		HttpSession session = request.getSession(); 
		String bu_email =(String)session.getAttribute("bu_email");
		 
		
		String pwd = request.getParameter("pwd");
		String ro_num = request.getParameter("ro_num");
		
		RoomDao rd = new RoomDao();
		
		// 사업자 비밀번호 찾기
		Business business = rd.selectBu(bu_email);
		int room = 0;
		
		String msg = "객실 삭제시 오류가 발생했습니다.";
		String url = request.getContextPath() + "/room/roomDelete?ro_num="+ro_num;
		
		if(pwd == null || pwd.equals("") || !pwd.equals(business.getBu_password())) {
			msg = "비밀번호가 틀렸습니다.";
		}else {
			// 비밀번호가 일치하면 객실 삭제
			room = rd.deleteRoom(map);
		}
		
		if(room > 0) {
			msg = "객실 삭제가 완료되었습니다.";
			url = request.getContextPath() + "/room/roomlist?bu_email="+bu_email;
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		
		return "/view/alert.jsp";
	}
	
	
	
	
	
	@RequestMapping("reservation")
	public String reservation(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		HttpSession session = request.getSession(); 
		String bu_email =(String)session.getAttribute("bu_email");
		 
		
		RoomDao rd = new RoomDao();		
				
		// 페이지 번호
		int pageInt;
		// 한페이지에 출력할 게시글 갯수
		int limit = 10;
		String pageNum;
		
		// pageNum을 세션에 저장해서 작업후 뒤로가기할때 바로전에 보던 페이지 출력
		if(request.getParameter("pageNum") != null){
			session.setAttribute("pageNum", request.getParameter("pageNum"));
		}
		pageNum = (String) session.getAttribute("pageNum");
		if(pageNum == null)
			pageNum = "1";
				
		pageInt = Integer.parseInt(pageNum);
				
		// -----------------------------------------------------------------------------
		// 게시글 갯수를 확인하는 메서드
		int count = rd.countBoard(bu_email);
		int boardNum = count - (pageInt - 1) *limit;
		
		int bottomLine = 3;
		int startNum = (pageInt - 1) / bottomLine * bottomLine + 1;
		int endNum = startNum + bottomLine - 1;
		
		int maxNum = (count / limit) + (count % limit == 0 ? 0 : 1);
		if(endNum > maxNum){
			endNum = maxNum;
		}
		
		// 한페이지에 출력할 게시글 rownum의 번호
		int startPage = (pageInt-1)*limit + 1;
		int endPage = (pageInt-1)*limit + limit;

		map.clear();
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("bu_email", bu_email);
		
		// 예약 내역 찾기
		List<Booking> bk = rd.selectBkList(map);
		System.out.println(bk);
		
		request.setAttribute("bk", bk);
		request.setAttribute("boardNum", boardNum);
		request.setAttribute("bottomLine", bottomLine);
		request.setAttribute("startNum", startNum);
		request.setAttribute("endNum", endNum);
		request.setAttribute("maxNum", maxNum);
		request.setAttribute("pageInt", pageInt);
		
		return "/view/entrepreneur/reservation.jsp";
	}
	
}
