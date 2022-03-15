<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Website Example</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/common/style.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
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
<table class="table" style="width: 75%; margin:10px auto; margin-top: 50px;">
    <tbody>
      <tr>
        <td><a href="<%=request.getContextPath()%>/view/entrepreneur/roominfo.jsp">
        	<img class="roomlist_main-img" src="<%=request.getContextPath()%>/image/1.jpg">
        </a></td>
        <td class= "roomlist_box">
			<div>
				<h3>스탠다드 더블</h3>
				<h6>기준 2명 / 최대 2명</h6>
			</div>
			<div class="roomlist_bottom">
				<h4>65,000원</h4>
			</div>
		</td>
      </tr>
      <tr>
        <td><a href="<%=request.getContextPath()%>/view/room/roominfo.jsp">
        	<img class="roomlist_main-img" src="<%=request.getContextPath()%>/image/2.jpg">
        </a></td>
        <td  class= "roomlist_box">
        	<div>
				<h3>스탠다드 트윈</h3>
				<h6>기준 2명 / 최대 3명</h6>
			</div>
			<div class="roomlist_bottom">
				<h4>75,000원</h4>
			</div>
        </td>
      </tr>
      <tr>
        <td><a href="<%=request.getContextPath()%>/view/room/roominfo.jsp">
        	<img class="roomlist_main-img" src="<%=request.getContextPath()%>/image/3.jpg">
        </a></td>
        <td  class= "roomlist_box">
        	<div>
				<h3>디럭스 더블</h3>
				<h6>기준 2명 / 최대 4명</h6>
			</div>
			<div class="roomlist_bottom">
				<h4>80,000원</h4>
			</div>
        </td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>
