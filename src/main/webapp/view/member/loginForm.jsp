<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	Kakao.init('7c7fc9be5a5c5e37975ce524e7a39cf2');
	console.log(Kakao.isInitialized());
</script>
</head>
<body>

<div class="login_form_width">
	<form action="${pageContext.request.contextPath}/member/loginPro" method="post">
		<div class="large_text active" style="text-align : center;">
			<img alt="logo" src="${pageContext.request.contextPath}/image/colorlogo.png" style="width:200px;"><br>
		</div>
		<input type="text" name="email" class="form-control form-control-lg mt-5" placeholder="이메일">
		<input type="password" name="password" class="form-control form-control-lg" placeholder="비밀번호">
		<input type="submit" class="default_btn rounded mt-3" value="로그인">
		<button type="button" class="default_btn rounded mt-1" 
			onclick="location.href='${pageContext.request.contextPath}/member/buLoginForm'">Going Business</button>
		<%-- <button class="default_btn rounded mt-1" style="background: rgb(252,229,30);">
			<span class="small_text">
				<img alt="logo" src="${pageContext.request.contextPath}/image/kakaotalk.png">
				카카오톡으로 로그인
			</span>
		</button> --%>
		<a id="custom-login-btn" href="javascript:loginWithKakao()">
		  <button type="button" class="default_btn rounded mt-1" style="background: rgb(252,229,30);">
			<span class="small_text">
				<img alt="logo" src="<%=request.getContextPath() %>/image/kakaotalk.png">
				카카오톡으로 로그인
			</span>
			</button>
		</a>
		<script type="text/javascript">
		  function loginWithKakao() {
		    Kakao.Auth.login({
		      success: function(authObj) {
		        /* alert(JSON.stringify(authObj)) */ 
		        
		        Kakao.API.request({
			        url: '/v2/user/me',
			        success: function(res) {
			          /* alert(JSON.stringify(res)) */
			          const id = res.id
			          const name = res.properties.nickname
			          location.href='${pageContext.request.contextPath}/member/kakaoLogin?id='+id+'&name='+name
			        },
			        fail: function(error) {
			          alert(
			            'login success, but failed to request user information: ' +
			              JSON.stringify(error)
			          )
			        },
			      })
		        
		      },
		      fail: function(err) {
		        alert(JSON.stringify(err))
		      },
		    })
		  }
		</script>
		
		<hr>
		
		<div class="row mt-3">
			<div class="col-sm-6" style="text-align:center;">
				<a class="small_text non_deco">비밀번호 재설정</a>
			</div>
			<div class="col-sm-6" style="text-align:center;">
				<a class="small_text non_deco" href="${pageContext.request.contextPath}/member/signupForm">회원가입</a>
			</div>
		</div>
	</form>
</div>

</body>
</html>