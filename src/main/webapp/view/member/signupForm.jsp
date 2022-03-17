<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script>
function auth(){
	const tel = document.f.bu_tel.value;
	const param = "tel="+tel;
	
	ajax("<%=request.getContextPath()%>/member/phoneAuth", param, callback, 'GET')
}
function callback(){
	if(this.readyState == 4 && this.status == 200){
		
		/* let rand = this.responseText.trim();
		document.f.rand.value=rand;  핸드폰 인증번호 확인용 */
		
		alert('인증 번호를 전송했습니다.')
		
		const code_btn = document.getElementById("code_btn")
		code_btn.disabled = false
	}
}

function authCheck(){
	/* const rand = document.f.rand.value; */
	const code = document.f.code.value;
	const param = "code="+code;
	
	ajax("<%=request.getContextPath()%>/member/phoneAuthOk", param, callbackCheck, 'GET')
	
}
function callbackCheck(){
	if(this.readyState == 4 && this.status == 200){
		let result = this.responseText.trim();
		alert(result);
		
		if(result == 'false'){
			alert('인증되었습니다')
			const input_tel = document.getElementById("input_tel")
			input_tel.disabled = true
			
			const input_code = document.getElementById("input_code")
			input_code.disabled = true
			
			const tel_btn = document.getElementById("tel_btn")
			tel_btn.disabled = true
			
			const code_btn = document.getElementById("code_btn")
			code_btn.disabled = true
		} else {
			alert('인증 번호가 다릅니다.')
		}
	}
}
</script>
</head>
<body>

<div class="signup_form_width">
		<div style="text-align : center;">
			<b class="large_text" style="color:#ffc107;">회원가입</b>
		</div>
	<form name="f" action="${pageContext.request.contextPath}/member/signupPro" method="post">
		<!-- <input type="text" name="rand" id="rand"> 인증번호 확인용 -->
		<div class="row mt-5">
			<div class="col-sm-8">
				<input type="tel" name="tel" id="input_tel" class="form-control form-control-lg" 
					id="tel" placeholder="전화번호(- 빼고 작성해주세요)" pattern="[0-9]{11}" required>
			</div>
			<div class="col-sm-4">
				<button type="button" id="tel_btn" class="default_btn rounded" style="height: 48px;" onclick="auth()">인증코드 전송</button>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-sm-8">
				<input type="text" name="code" id="input_code" class="form-control form-control-lg" placeholder="전송받은 코드">
			</div>
			<div class="col-sm-4">
				<button type="button" id="code_btn" class="default_btn rounded" style="height: 48px;" onclick="authCheck()" disabled>코드 확인</button>
			</div>
		</div>
		
		<input type="email" name="email" class="form-control form-control-lg mt-3" placeholder="이메일">
		
		<input type="password" name="password" class="form-control form-control-lg mt-3" placeholder="비밀번호" pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$">
		<input type="password" class="form-control form-control-lg mt-3" placeholder="비밀번호 확인">
		
		<div class="mt-3">
			<input type="text" name="name" class="form-control form-control-lg" placeholder="이름">
		</div>
		
		<input type="submit" class="default_btn rounded mt-3" value="회원가입">
		
	</form>
</div>

</body>
</html>