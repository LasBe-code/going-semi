<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/memberInfo.css">
</head>
<body>
<div class="default_width container-fluid">
  <div class="row">
    <div class="col-sm-2" id="memberinfo_left_nav" >
    <a href="${pageContext.request.contextPath}/reservation/reservationList">예약내역<br><br></a>
    <a href="${pageContext.request.contextPath}/member/memberInfo">내정보관리<br><br></a>
    </div>
    <div class="col-sm-10">
    <c:choose>
    	<c:when test="${bookingDetail.status == 1 }">
    		<p class="reservationDetail_head">예약완료</p>
    	</c:when>
    	<c:when test="${bookingDetail.status == 2 }">
    		<p class="reservationDetail_head" style="background-color: red;">취소완료</p>
    	</c:when>
    	<c:otherwise>
    		<p class="reservationDetail_head">이용완료</p>
    	</c:otherwise>
    </c:choose>
    
    
      <p class="reservationDetail_medium_text"><b>${bookingDetail.bu_title}</b></p>
      <p class="reservationDetail_small_text" >${bookingDetail.ro_num}<b>ㆍ</b>  </p><br>
      <p class="reservationDetail_default_text">체크인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bookingDetail.checkin}</p>
      <p class="reservationDetail_default_text">체크아웃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bookingDetail.checkout}</p><br>
      <p class="reservationDetail_default_text">예약번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bookingDetail.bo_num}</p>
      <p class="reservationDetail_default_text">예약자 이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bookingDetail.name}</p>
      <p class="reservationDetail_default_text">안심번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bookingDetail.tel}</p><br>
      <p class="reservationDetail_noti_text">ⓘ휴대폰 번호 ${bookingDetail.tel}은(는)<br>
       &nbsp;&nbsp;&nbsp;&nbsp;안심번호로 숙소에 전송되며, 퇴실 후 7일간 보관됩니다.</p><br>
       <hr>
       <br>
       <br>
       <p class="reservationDetail_medium_text"><b>결제정보</b></p>
       <p class="reservationDetail_default_text">결제수단&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bookingDetail.payment}</p>
      <c:choose>
      	<c:when test="${bookingDetail.status == 2 }">
       <p class="reservationDetail_default_text">총 환불금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b class="reservationDetail_pay">-${bookingDetail.price}</b></p><br>
      	</c:when>
      	<c:otherwise>
      	 <p class="reservationDetail_default_text">총 결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b class="reservationDetail_pay">${bookingDetail.price}</b></p><br>
      	</c:otherwise>
      </c:choose>
       <button class = "reservation_btn_chk rounded" type="button"  
       onclick="location.href='${pageContext.request.contextPath}/reservation/reservationList'">확인</button>
       <button class = "reservation_btn_chk rounded" type="button">삭제</button>
       <br><br><br><br>
</div>
</div>
</div>

</body>
</html>