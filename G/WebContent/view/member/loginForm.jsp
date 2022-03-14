<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="login_form_width">
	<form action="">
		<div style="text-align : center;">
			<img alt="logo" src="<%=request.getContextPath() %>/image/colorlogo.png" style="width:200px;">
		</div>
		<input type="text" class="form-control form-control-lg mt-5" placeholder="이메일">
		<input type="text" class="form-control form-control-lg mt-1" placeholder="비밀번호">
		<button class="default_btn rounded mt-3">로그인</button>
		
		<button class="default_btn rounded mt-1" style="background: rgb(252,229,30);">
			<span class="small_text">
				<img alt="logo" src="<%=request.getContextPath() %>/image/kakaotalk.png">
				카카오톡으로 로그인
			</span>
		</button>
		
		<hr>
		
		<div class="row mt-3">
			<div class="col-sm-6" style="text-align:center;">
				<a class="small_text non_deco">비밀번호 재설정</a>
			</div>
			<div class="col-sm-6" style="text-align:center;">
				<a class="small_text non_deco" href="<%=request.getContextPath() %>/view/member/signupForm.jsp">회원가입</a>
			</div>
		</div>
	</form>
</div>

</body>
</html>