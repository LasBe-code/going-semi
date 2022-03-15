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
    <div class="col-sm-10">
    <p class="reservationDetail_head_cancle">취소완료</p>
      <p class="reservationDetail_medium_text"><b>양평 풀스테이 조이 풀빌라</b></p>
      <p class="reservationDetail_small_text" >A동<b>ㆍ</b>2박</p><br>
      <p class="reservationDetail_default_text">체크인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2021.03.13 일 16:00</p>
      <p class="reservationDetail_default_text">체크아웃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2021.03.15 화 11:00</p><br>
      <p class="reservationDetail_default_text">예약번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12345678</p>
      <p class="reservationDetail_default_text">예약자 이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;황유경</p>
      <p class="reservationDetail_default_text">안심번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;123412341234</p><br>
      <p class="reservationDetail_noti_text">ⓘ휴대폰 번호 01012341234은(는)<br>
       &nbsp;&nbsp;&nbsp;&nbsp;안심번호로 숙소에 전송되며, 퇴실 후 7일간 보관됩니다.</p><br>
       <hr>
       <br>
       <br>
       <p class="reservationDetail_medium_text"><b>결제정보</b></p>
       <p class="reservationDetail_default_text">결제수단&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신용카드</p>
       <p class="reservationDetail_default_text">총 결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b class="reservationDetail_pay">-600,000원</b></p><br>
       <button class = "reservation_btn_chk rounded" type="button"  
       onclick="location.href='<%= request.getContextPath()%>/view/reservationList/reservationList.jsp'">확인</button>
       <button class = "reservation_btn_chk rounded" type="button">삭제</button>
       <br><br><br><br>
</div>
</div>
</div>

</body>
</html>