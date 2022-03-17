<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>

<body>
<div class = "roominfo_div_box" style="margin-top: 100px;">
	<div id="demo" class="carousel slide" data-ride="carousel">
	
	  <!-- Indicators -->
	  <ul class="carousel-indicators">
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	    <li data-target="#demo" data-slide-to="2"></li>
	  </ul>
	  
	  <!-- The slideshow -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="${pageContext.request.contextPath}/image/1.jpg" width="1100" height="500">
	    </div>
	    <div class="carousel-item">
	      <img src="${pageContext.request.contextPath}/image/2.jpg" width="1100" height="500">
	    </div>
	    <div class="carousel-item">
	      <img src="${pageContext.request.contextPath}/image/3.jpg" width="1100" height="500">
	    </div>
	  </div>
	  
	  <!-- Left and right controls -->
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	</div>
	<div style="margin-top: 70px;">
		<h4 style="text-align: center; margin-bottom: 30px;">객실기본정보</h4>
		<h5 style=" margin-bottom: 30px;">${room.ro_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가격 : ${room.ro_price}</h5>
		<h5 style=" margin-bottom: 30px;">체크인시간 : ${room.checkin}&nbsp;&nbsp;체크아웃시간 : ${room.checkout}</h5>
		<div>	
			${room.ro_info}
		</div>
		  <input type="button" class="default_btn rounded mt-1" value="정보수정" onclick="location.href='${pageContext.request.contextPath}/room/roomUpdate'">
	</div>
</div>
</body>
</html>