<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="default_width container-fluid">
  <div class="row">
     <div class="col-sm-2" style="margin-top: 55px;">
    <a style="color: black; font-size: 1.4em; text-decoration-line:none; " 
    href="<%= request.getContextPath()%>/view/member/reservationForm.jsp">예약내역<br><br></a>
    <a style="color: black; font-size: 1.4em; text-decoration-line:none; " 
    href="<%= request.getContextPath()%>/view/member/memberInfo.jsp">내정보관리<br><br></a>
    </div>
    
    
    <div class="col-sm-8">
      <h4><b>내 정보 수정</b></h4>
         <div class="row" >
				<div class="box" style="background: #BDBDBD;" >
				<img class="profile" src='zzz.JPG' id="pic"><br>
			</div>
  </div>
  <button type="button" class="btn btn-dark" onclick="win_upload()">사진등록</button>
  
  <br><br><br>
  <div>
  <p style="font-size: 1.5em;">닉네임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hoytory</p>
  <button type="button" class ="btn btn-dark" style="width : 180px" onclick="nickname_update()" >수정</button>
    <p id="nickname_update"></p>
<script>
function nickname_update() {
  document.getElementById("nickname_update").innerHTML ="닉네임 변경" ;
}

</script>
  </div>
  
   <br><br>
  <div>
  <p style="font-size: 1.5em;">예약자 이름&nbsp;&nbsp;&nbsp;&nbsp; 황*경</p>
  <button type="button" class ="btn btn-dark" style="width : 180px" onclick="name_update()">수정</button>
    <p id="name_update"></p>
<script>
function name_update() {
  document.getElementById("name_update").innerHTML ="이름 변경" ;
}
</script>
  </div>
  
   <br><br> 
  <div>
  <p style="font-size: 1.5em;">휴대폰 번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 010****1234</p>
  <p style="color:#BDBDBD;">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</p>
  <button type="button" class ="btn btn-dark" style="width : 180px" onclick="tel_update()">수정</button>
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
  <p style="color:#BDBDBD;"> 여기어때를 이용하고 싶지 않으신가요?&nbsp;&nbsp;
  <a href="#" style="color: black">로그아웃</a>
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color: black">회원탈퇴</a>
  </div>
</div>
</div>

</body>
</html>