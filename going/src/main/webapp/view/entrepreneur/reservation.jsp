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
	      <a class="nav-link" href="<%=request.getContextPath()%>/view/entrepreneur/roomInsert.jsp">객실 등록</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/view/entrepreneur/roomlist.jsp">객실 정보</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/view/entrepreneur/reservation.jsp">예약 확인</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/view/entrepreneur/inquiry.jsp">문의 내역</a>
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
      <tr>
     	<td>스탠다드 더블</td>
        <td>2명</td>
        <td>2022/02/20 ~ 2022/02/21</td>
     	<td>김철수</td>
        <td>010-5794-2154</td>
        <td>john@example.com</td>
      </tr>
      <tr>
      	<td>스탠다드 트윈</td>
        <td>3명</td>
        <td>2022/02/25 ~ 2022/02/28</td>
      	<td>김영희</td>
        <td>010-3157-5418</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
   		<td>스탠다드 트윈</td>
        <td>4명</td>
        <td>2022/03/6 ~ 2022/03/08</td>
   		<td>김영호</td>
        <td>010-6987-5431</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
</div>
</body>
</html>