<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/reservationList.css">
</head>
<body>
<div class="default_width container-fluid">
  <div class="row">
    <div class="col-sm-2" id="memberinfo_left_nav" >
    <a href="<%= request.getContextPath()%>/view/reservationList/reservationList.jsp">예약내역<br><br></a>
    <a href="<%= request.getContextPath()%>/view/memberInfo/memberInfo.jsp">내정보관리<br><br></a>
    </div>
    <div class="col-sm-10">
    <p class="reservationDetail_head">예약완료</p>
      <h3>제주 아이비테라스 펜션</h3>
      <p style="font-size: 1.4em">202호(하프오션뷰) ● 1박</p><br>
      <p style="font-size: 1.2em">체크인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2021.11.13 토 16:00</p>
      <p style="font-size: 1.2em">체크아웃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2021.11.14 일 11:00</p><br>
      <p style="font-size: 1.2em">예약번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12345678</p>
      <p style="font-size: 1.2em">예약자 이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;황유경</p>
      <a style="font-size: 1.2em">안심번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;123412341234</a><br>
      <a style="font-size: 1.0em; color:gray" >ⓘ휴대폰 번호 01012341234은(는)<br>
       &nbsp;&nbsp;&nbsp;&nbsp;안심번호로 숙소에 전송되며, 퇴실 후 7일간 보관됩니다.</a><br>
       <br>
       <hr>
       <br>
       <h3>결제정보</h3>
       <p style="font-size: 1.2em">총 결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="color:red">65,000원</b></p><br>
       <button type="button" class="btn btn-dark" onclick="location.href='http://localhost:8080/toryMainProject/reservation.html'">확인</button>
       <button type="button" class="btn btn-dark">삭제</button>
       <br><br><br><br>
</div>
</div>
</div>

</body>
</html>