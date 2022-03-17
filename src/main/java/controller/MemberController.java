package controller;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Business;
import model.Member;
import service.MemberDao;
import util.Naver_Sens_V2;



public class MemberController extends MskimRequestMapping {
	@RequestMapping("loginForm")
	public String loginForm(HttpServletRequest request, HttpServletResponse response) {
		return "/view/member/loginForm.jsp";
	}
	
	@RequestMapping("loginPro")
	public String loginPro(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "/view/alert.jsp";
	}
	
	@RequestMapping("signupForm")
	public String signupForm(HttpServletRequest request, HttpServletResponse response) {
		return "/view/member/signupForm.jsp";
	}
	
	@RequestMapping("signupPro")
	public String signupPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		MemberDao md = new MemberDao();
		String name = request.getParameter("name");
		int num = md.insertMember(request);

		String msg = "";
		String url = "";
		if(num > 0){
			msg = name + "님의 가입이 완료되었습니다.";
			url = request.getContextPath()+"/view/member/loginForm.jsp";
		} else {
			msg = "회원가입에 실패하였습니다.";
			url = request.getContextPath()+"/view/member/loginForm.jsp";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/view/alert.jsp";
	}
	@RequestMapping("buLoginPro")
	public String buLoginPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String email = request.getParameter("bu_email");
		String pass = request.getParameter("bu_password");
		MemberDao md = new MemberDao();

		Business bu = md.selectBusinessOne(email);

		String msg = "아이디를 확인하세요";
		String url = request.getContextPath()+"/member/buLoginForm";

		if(bu != null){
			if(pass.equals(bu.getBu_password())){ //로그인 성공
				request.getSession().setAttribute("bu_email", email);
				msg = bu.getBu_name() + "님이 로그인 하셨습니다.";
				url = request.getContextPath()+"/room/roomlist";
			} else { // 아이디 o / 패스워드 x
				msg = "비밀번호를 확인하세요.";
			}
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/view/alert.jsp";
	}
	@RequestMapping("buSignupPro")
	public String buSignupPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		MemberDao md = new MemberDao();
		String name = request.getParameter("bu_name");
		int num = md.insertBusiness(request);

		String msg = "";
		String url = "";
		if(num > 0){
			msg = name + "님의 가입이 완료되었습니다.";
			url = request.getContextPath()+"/view/member/buLoginForm.jsp";
		} else {
			msg = "회원가입에 실패하였습니다.";
			url = request.getContextPath()+"/view/member/buLoginForm.jsp";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/view/alert.jsp";
	}
	
	@RequestMapping("phoneAuth")
	public String phoneAuth(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		Naver_Sens_V2 ns = new Naver_Sens_V2();
		String tel = request.getParameter("tel");
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
		ns.send_msg(tel, numStr);
        request.setAttribute("result", numStr);
		session.setAttribute("rand", numStr);
		
		return "/common/phoneAuth.jsp";
	}
	
	@RequestMapping("phoneAuthOk")
	public String phoneAuthOk(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String rand = (String) session.getAttribute("rand");
		String code = (String) request.getParameter("code");
		
		System.out.println(rand+" : "+code);
		
		if(rand.equals(code)) {
			request.setAttribute("result", false);
		} else {
			request.setAttribute("result", true);
		}
		
		return "/common/phoneAuth.jsp";
	}
}
