<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/memberInfo.css">
</head>
<body>
<div class="default_width container-fluid">
  <div class="row">
    <div class="col-sm-2" id="memberinfo_left_nav" >
    <a href="<%= request.getContextPath()%>/view/reservationList/reservationList.jsp">예약내역<br><br></a>
    <a href="<%= request.getContextPath()%>/view/memberInfo/memberInfo.jsp">내정보관리<br><br></a>
    </div>
    
    
    <div class="col-sm-8">
      <p class="memberInfo_large_text"><b>내 정보 수정</b></p>
         <div class="row" >
				<div class="profile_img_box" >
				<img class = "profile_user_img"
				src="https://mblogthumb-phinf.pstatic.net/MjAyMDA4MTJfMjUx/MDAxNTk3MjM2NTM1ODk1.ETanjjCYIUtqm9yj0WiqcZawOJJRAqBi5nOvL2eJpjUg.3e_LhZq9spyXeL0ErHeq9wIm_XPm9meVAg91BoyiFtkg.JPEG.thfwl4514/IMG_1896.JPG?type=w800"><br>
			</div>
  </div>
  <button type="button" class="memberInfo_btn_picture rounded" onclick="">사진등록</button>
  <br><br><br>
  <div>
  <p class="memberInfo_default_text">닉네임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hoytory</p>
  <button type="button" class ="memberInfo_defalut_btn rounded" 
  onclick="nickname_update()" >수정</button>
   <p id="nickname_update"></p>
	<script>
	function nickname_update() {
  	document.getElementById("nickname_update").innerHTML ="닉네임 변경" ;
	}
</script>
  </div>
  
   <br><br>
  <div>
  <p class="memberInfo_default_text">예약자 이름&nbsp;&nbsp;&nbsp;&nbsp; 황유경</p>
  <button type="button" class ="memberInfo_defalut_btn rounded" 
  onclick="name_update()">수정</button>
    <p id="name_update"></p>
	<script>
	function name_update() {
  	document.getElementById("name_update").innerHTML ="이름 변경" ;
	}
</script>
  </div>
  
   <br><br> 
  <div>
  <p class="memberInfo_default_text">휴대폰 번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 010-1234-1234</p>
  <p class="memberInfo_small_text">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</p>
  <button type="button" class ="memberInfo_defalut_btn rounded" onclick="tel_update()">수정</button>
      <p id="tel_update"></p>
	<script>
	function tel_update() {
  	document.getElementById("tel_update").innerHTML ="전화번호 변경" ;
	}
	</script>
  </div>
  
  <br>
  <hr>
  <br>
  <hr>
  <div id="memberinfo_bottom_text">
  <p class="memberInfo_small_text"> GOING을 이용하고 싶지 않으신가요?&nbsp;&nbsp;
  <a href="<%=request.getContextPath()%>/search/main.jsp" >로그아웃</a>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="<%=request.getContextPath()%>/search/main.jsp" >회원탈퇴</a>
  </div>
  
  </div>
</div>
</div>

</body>
</html>