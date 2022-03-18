package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchController extends MskimRequestMapping{
	@RequestMapping("main")
	public String main(HttpServletRequest request, HttpServletResponse response) {
		return "/view/search/main.jsp";
	}
}
