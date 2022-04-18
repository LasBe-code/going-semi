package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Business;
import service.SearchDao;
import util.DateParse;

public class SearchController extends MskimRequestMapping{
	@RequestMapping("main")
	public String main(HttpServletRequest request, HttpServletResponse response) {
		DateParse dateParse = new DateParse();
		String today = dateParse.getTodayPlus(0);
	    String tomorrow = dateParse.getTodayPlus(1);
	    request.setAttribute("today", dateParse.strToDate(today));
	    request.setAttribute("tomorrow", dateParse.strToDate(tomorrow));
	    
		return "/view/search/main.jsp";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("search")
	public String search(HttpServletRequest request, HttpServletResponse response) {
		String bu_address = request.getParameter("bu_address");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		String ro_count = request.getParameter("ro_count");
		String bu_id = request.getParameter("bu_id");
		SearchDao searchDao = new SearchDao();
		
		Map map = new HashMap();
		map.put("bu_address", bu_address == null ? "" : bu_address);
		map.put("bu_id", bu_id);
		map.put("ro_count", ro_count);
		
		List<Business> list = searchDao.searchBusinessList(map);
		
		DateParse dateParse = new DateParse();
		String today = dateParse.getTodayPlus(0);
		String tomorrow = dateParse.getTodayPlus(1);
		
		// yyyyMMdd -> yyyy-MM-dd
		today = dateParse.strToDate(today);
		tomorrow = dateParse.strToDate(tomorrow);
		
		// 카테고리 별 검색 시 현재 날짜로 날짜 설정
		if(checkin == null) checkin = today;
		if(checkout == null) checkout = tomorrow;
		
		request.setAttribute("bu_list", list);
		request.setAttribute("checkin", checkin);
		request.setAttribute("checkout", checkout);
		
		request.setAttribute("bu_id", bu_id);
		request.setAttribute("search", bu_address);
		request.setAttribute("ro_count", ro_count);
		request.setAttribute("today", today);
		request.setAttribute("tomorrow", tomorrow);
		return "/view/search/search.jsp";
	}
}
