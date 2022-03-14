<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/common/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/reservationList.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<nav class="header navbar navbar-expand-sm bg-warning navbar-dark">
      <div class="default_width container-fluid ">
        <img alt="logo" src="<%=request.getContextPath() %>/image/logo.png" style="width:120px;"
        	onclick="location.href='<%=request.getContextPath() %>/view/search/main.jsp'">
        <ul class="navbar-nav  justify-content-end">
          <li class="nav-item">
            <a class="nav-link" href="#">예약내역</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath() %>/view/member/loginForm.jsp">로그인</a>
          </li>
        </ul>
      </div>
    </nav>
</body>
</html>