package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kic.MskimRequestMapping;
import kic.RequestMapping;
import model.Member;
import service.MemberMybatisDao;

public class MemberController extends MskimRequestMapping{
	
	//memberInfo
	@RequestMapping("memberInfo")
	public String memberInfo(HttpServletRequest request, 
			HttpServletResponse response) {
		
		MemberMybatisDao md = new MemberMybatisDao();
		Member mem  = md.selectOne(null); 
		request.setAttribute("member", mem);
		
		return "/view/memberInfo/memberInfo.jsp";
	}
			
	
	
	
	

}
