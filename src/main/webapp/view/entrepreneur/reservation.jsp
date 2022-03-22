<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container" style="margin-top:100px">
  <nav class="navbar navbar-expand-sm bg-light navbar-light" style="width: 60%; margin:0px auto;">
  	<div style="margin: 0px auto;">
	  <ul class="navbar-nav">
	  	<li class="nav-item">
	      <a class="nav-link" href="${pageContext.request.contextPath}/room/roomInsert">객실 등록</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="${pageContext.request.contextPath}/room/roomlist">객실 정보</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="${pageContext.request.contextPath}/room/reservation">예약 확인</a>
	    </li>
	  </ul>
	  </div>
</nav>
<div class="container" style="margin-top: 50px;">
  <h2 style="text-align: center;">예약 내역</h2>
  <table class="table table-striped" style="margin-top: 30px; text-align: center;">
    <thead>
      <tr>
     	<th>객실 이름</th>
        <th>이용인원수</th>
        <th>예약일</th>
        <th>예약자이름</th>
        <th>핸드폰번호</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="b" items="${bk}">
      <tr>
     	<td>${b.ro_name}</td>
        <td>${b.ro_count}</td>
        <td>${b.checkin} ~ ${b.checkout}</td>
     	<td>${b.name}</td>
        <td>${b.tel}</td>
        <td>${b.email}</td>
      </tr>
    </c:forEach>  
    </tbody>
  </table>
</div>
<div class="container"  >
<ul class="pagination justify-content-center"  >
	<li class='page-item <c:if test="${startNum <= bottomLine}">disabled </c:if>'>
	<a class="page-link" href="${pageContext.request.contextPath}/room/reservation?pageNum=${startPage-bottomLine}">Previous</a></li>
	<c:forEach var="i" begin="${startNum}" end="${endNum}">
		<li class='page-item <c:if test="${i==pageInt}">active</c:if>'>
		<a class="page-link" href="${pageContext.request.contextPath}/room/reservation?pageNum=${i}">${i}</a></li>
	</c:forEach>
	<li class='page-item <c:if test="${endNum >= maxNum}">disabled </c:if>'>
	<a class="page-link" href="${pageContext.request.contextPath}/room/reservation?pageNum=${startPage+bottomLine}">Next</a></li>
</ul>
</div>
</div>
</body>
</html>