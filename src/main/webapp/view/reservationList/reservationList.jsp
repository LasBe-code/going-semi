<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <a href="${pageContext.request.contextPath}/reservation/reservationList">예약내역<br><br></a>
    <a href="${pageContext.request.contextPath}/member/memberInfo">내정보관리<br><br></a>
    </div>
    
    <div class="col-sm-5" >
    <p class="reservationList_large_text"><b>예약 내역</b></p>
    <p class="reservationList_medium_text">예약 완료</p>
    
    <c:forEach var="booking" items="${bookingList}" varStatus="s">
    	<c:if test="${booking.status == 1}">
    		<c:choose>
    			<c:when test="${s.count == 1 }">
    				<table class="reservationList_table"">
    			</c:when>
    			<c:when test="${s.count % 2 == 0}">
    				<table class="reservationList_table" style="margin-top: 40px;">
    			</c:when>
    			<c:otherwise>
    				<table class="reservationList_table" style="margin-top: 184px;">
    			</c:otherwise>
    		</c:choose>
    			<tr>
    				<td>
    					<img class="reservationList_image" src="#">
    				</td>
    			</tr>
    			<tr align=center>
       				<td width="400px" height="150px">
      					<p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">예약완료</p><br>
      					<a class="medium_text" style="cursor:pointer; color:black;  text-decoration-line: none;" 
      					href="${pageContext.request.contextPath}/reservation/reservationDetail?flag=true&bo_num=${booking.bo_num}">
      				<b>${booking.bu_title}</b><br>
      				${booking.checkin} - ${booking.checkout} <b>ㆍ</b></a><br>
      				<button class="default_btn rounded" type="button" 
      				style="height: 30px; width:100px; margin-top: 5px; background-color: red;" 
      				onclick="cancelButton(${booking.bo_num});">
      				<b>예약취소</b></button>
      				</td>
      			</tr>
    		</table>
    	</c:if>
    </c:forEach>
    </div>
    
    <div class="col-sm-2"></div>
    <div class="col-sm-5" >
    <p class="medium_text" style="margin-top: 100px;">이용 완료</p>
    
    <c:forEach var="booking" items="${bookingList}">
    	<c:if test="${booking.status == 3}">
    		<c:choose>
    			<c:when test="${s.count == 1 }">
    				<table class="reservationList_form_table">
    			</c:when>
    			
    			<c:when test="${s.count % 2 == 0}">
    				<table class="reservationList_form_table" style="margin-top: 40px;">
    			</c:when>
    			
    			<c:otherwise>
    				<table class="reservationList_form_table" style="margin-top: 146px;">
    			</c:otherwise>
    			
    		</c:choose>
    			<tr>
    				<td>
    					<img class="reservationList_image" src="#">
    				</td>
    			</tr>
    			 <tr align=center>
       				<td width="400px" height="150px">
      				<p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">이용완료</p><br>
      				<a class="medium_text" 
      					style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      					href="${pageContext.request.contextPath}/reservation/reservationDetail?flag=true&bo_num=${booking.bo_num}">
      				<b>${booking.bu_title}</b><br>
      				${booking.checkin} - ${booking.checkout}<b>ㆍ</b>  </a><br>
      				<p class="default_btn rounded"style="height: 30px; width:100px; margin-top: 5px;" >
      				<b>이용완료</b></p>
      				</td>
      			</tr>
    		</table>
    	</c:if>
    </c:forEach>
    </div>
    
    <div class="col-sm-2"></div>
    <div class="col-sm-5" >
    <p class="medium_text" style="margin-top: 100px;">취소 완료</p>
    <c:forEach var="booking" items="${bookingList}">
    	<c:if test="${booking.status == 2}">
    		<table class="reservation_form_table">
    			<tr>
    				<td>
    					<img class="reservationList_image" src="#">
    				</td>
    			</tr>
    			<tr align=center>
       				<td width="400px" height="150px">
      				<p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">취소완료</p><br>
      				<a class="medium_text" 
      				   style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      				   href="${pageContext.request.contextPath}/reservation/reservationDetail?flag=true&bo_num=${booking.bo_num}">
      				<b>${booking.bu_title}</b><br>
      				${booking.checkin}- ${booking.checkout}<b>ㆍ</b> </a><br>
      				<p class="default_btn rounded" style="height: 30px; width:100px; margin-top: 5px;" >
      				<b>취소완료</b></p>
      				</td>
      			</tr>
    		</table>
    	</c:if>
    </c:forEach>

	</div>
	</div>
</div>



<script type="text/javascript">
//onclick="location.href='${pageContext.request.contextPath}/reservation/reservationDetail?flag=\'false\'&bo_num=\'${booking.bo_num}\''">
/*function logout() {
	
	if (confirm('로그아웃 하시겠습니까?') == true) {
		alert('로그아웃 되었습니다.')
		location.href = "${pageContext.request.contextPath}/view/search/main.jsp";
	} else {
		return;
	}
	
}*/
function cancelButton(bo_num){
	
	var flag = confirm('예약을 취소하시겠습니까?');
	
	if (flag) {
		alert ('예약이 취소되었습니다.');
		location.href="${pageContext.request.contextPath}/reservation/reservationDetail?flag=false&bo_num="+bo_num;
	} else {
		return;
	}	
	
}


</script>
</body>
</html>