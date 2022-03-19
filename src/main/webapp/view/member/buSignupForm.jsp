<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script>
	let phoneAuth = true;
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
			code_btn.readonly = false
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
				input_tel.readonly = true
				
				const input_code = document.getElementById("input_code")
				input_code.readonly = true
				
				const tel_btn = document.getElementById("tel_btn")
				tel_btn.disabled = true
				
				const code_btn = document.getElementById("code_btn")
				code_btn.disabled = true
			} else {
				alert('인증 번호가 다릅니다.')
			}
		}
	} 
	
	function change_bu_id(){
		const id = document.getElementById("select_bu_id");
		const value = id.options[id.selectedIndex].value;
		document.f.bu_id.value = value
	}
</script>
</head>
<body>

<div class="signup_form_width">
		<div style="text-align : center;">
			<b class="large_text" style="color:#ffc107;">회원가입</b>
		</div>
	<form name="f" action="${pageContext.request.contextPath}/member/buSignupPro" method="post">
	
		<!-- <input type="text" name="rand" id="rand"> 핸드폰 인증번호 확인용 -->
		
		<div class="row mt-5">
			<div class="col-sm-8">
				<input type="tel" name="bu_tel" id="input_tel" class="form-control form-control-lg" 
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
		
		<input type="email" name="bu_email" class="form-control form-control-lg mt-3" placeholder="이메일">
		
		<input type="password" name="bu_password" class="form-control form-control-lg mt-3" placeholder="비밀번호" pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$">
		<input type="password" class="form-control form-control-lg mt-3" placeholder="비밀번호 확인">
		
		<div class="mt-3">
			<input type="text" name="bu_name" class="form-control form-control-lg" placeholder="이름">
		</div>
		
		<div class="row mt-5">
			<div class="col-sm-4">
				<input type="hidden" name="bu_id" value="1"> <!-- select 저장용 -->
				<select id="select_bu_id" class="form-select form-select-lg" onchange="change_bu_id()">
				     <option value="1">호텔</option>
				     <option value="2">모텔</option>
				     <option value="3">펜션</option>
				     <option value="4">리조트</option>
			   	</select>
			</div>
			
			<div class="col-sm-8">
				<input type="text" name="bu_title" class="form-control form-control-lg" placeholder="업체 이름">
			</div>
		</div> 
		
		<input type="text" name="bu_address" class="form-control form-control-lg mt-3" placeholder="업체 주소">
		
		<input type="submit" id="submit" class="default_btn rounded mt-3" value="회원가입">
		  
	</form>
</div>

</body>
</html>