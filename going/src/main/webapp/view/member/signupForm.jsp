<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="signup_form_width">
	<form action="">
		<div style="text-align : center;">
			<b class="large_text" style="color:#ffc107;">회원가입</b>
		</div>
		<div class="row mt-5">
			<div class="col-sm-8">
				<input type="email" class="form-control form-control-lg" placeholder="이메일">
			</div>
			<div class="col-sm-4">
				<button class="default_btn rounded" style="height: 48px;">인증코드 전송</button>
			</div>
		</div>
		
		<div class="row mt-3">
			<div class="col-sm-8">
				<input type="text" class="form-control form-control-lg" placeholder="전송받은 코드">
			</div>
			<div class="col-sm-4">
				<button class="default_btn rounded" style="height: 48px;">코드 확인</button>
			</div>
		</div>
		
		<input type="password" class="form-control form-control-lg mt-3" placeholder="비밀번호">
		<input type="password" class="form-control form-control-lg mt-3" placeholder="비밀번호 확인">
		
		<div class="row mt-3">
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-lg" placeholder="이름">
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control form-control-lg" placeholder="전화번호">
			</div>
		</div>
		
		<button class="default_btn rounded mt-3">회원가입</button>
		
	</form>
</div>

</body>
</html>