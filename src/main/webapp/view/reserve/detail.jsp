<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function roomDetail(ro_num, bu_email){
	const url = '${pageContext.request.contextPath}/reservation/roomDetail?ro_num='+ro_num+'&bu_email='+bu_email
			console.log(url+', '+ro_num)
	const op = 'width=1200, height=1000, location=no, toolbar=no'

	open(url, '방 정보', op)
}
</script>
</head>
<body>

<div class="default_width mt-5">
  <div class="top row">
    <!-- Carousel -->
    <div id="demo" class="carousel col-sm-6" data-bs-ride="carousel">

      <!-- Indicators/dots -->
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
      </div>
      
      <!-- The slideshow/carousel -->
      <div class="carousel-inner ">
        <div class="carousel-item active">
          <img class="top-img  rounded" src="https://image.goodchoice.kr/resize_490x348/affiliate/2016/07/20/578f33c3c6eb2.jpg" alt="" class="d-block" style="width:490px">
        </div>
        <div class="carousel-item">
          <img class="top-img  rounded" src="https://image.goodchoice.kr/resize_490x348/affiliate/2016/07/05/577b1bcc75b2c.jpg" alt="" class="d-block" style="width:490px">
        </div>
        <div class="carousel-item">
          <img class="top-img  rounded" src="https://image.goodchoice.kr/resize_490x348/affiliate/2016/07/05/577b1bac46a0a.jpg" alt="" class="d-block" style="width:490px">
        </div>
      </div>
      
      <!-- Left and right controls/icons -->
      <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
      </button>
    </div>

    <div class="col-sm-6">
    
      <b class="large_text">
      	<span class="badge bg-warning">
      		<c:if test="${bu.bu_id == 1}">호텔</c:if>
      		<c:if test="${bu.bu_id == 2}">모텔</c:if>
      		<c:if test="${bu.bu_id == 3}">펜션</c:if>
      		<c:if test="${bu.bu_id == 4}">리조트</c:if>
      	</span> ${bu.bu_title}
      </b>
      
      <p class="gray_text"><img src="https://cdn4.iconfinder.com/data/icons/music-ui-solid-24px/24/location_map_marker_pin-2-512.png" style="width: 20px;"> ${bu.bu_address}</p>
      <div class="event-bg text-white rounded">
        <ul>
          <li>대표 이름 : ${bu.bu_name}</li>
          <li>대표 전화번호 : ${bu.bu_tel}</li>
        </ul>
      </div>
    </div>

    <div class="container mt-5">
      <ul class="nav nav-tabs nav-justified">
        <li class="nav-item">
          <a class="nav-link active" href="#">객실안내/예약</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style="color: dimgray;" href="#">리뷰</a>
        </li>
      </ul>
    </div>

    
		
		<c:forEach var="room" items="${roomList}">
			<form action="${pageContext.request.contextPath}/reservation/reserve" method="get">
		    	<input type="hidden" name="bu_title" value="${bu.bu_title}">
		    	<input type="hidden" name="ro_count" value="${ro_count}">
				<input type="hidden" name="checkin" value="${checkin}">
				<input type="hidden" name="checkout" value="${checkout}">
				<input type="hidden" name="ro_name" value="${room.ro_name}">
				<input type="hidden" name="price" value="${room.ro_price}">
				<c:set var="ro_num" value="${room.ro_num}" />
				<input type="hidden" name="ro_num" value="${ro_num}">
				
				<div class="reserve_room">
				  <p class="reserve_pic_view">
				    <img src="${roomPicMap[ro_num]}" class="rounded" style="width:376px; height:226px; object-fit: cover;">
				  </p>
				  <strong class="reserve_room_title">${room.ro_name}</strong>
				  <div class="reserve_room_price row">
				    <div class="col-sm-6">
				      <strong class="medium_text">가격</strong>
				    </div>
				    <div class="col-sm-6 right_text">
				      <b class="large_text">${room.ro_price}</b>
				    </div>
				  </div>
				  <div class="row">
				  		<div class="col-sm-6">
				  			<button type="button" class="reserve_room_btn default_btn medium_text" onclick="roomDetail('${room.ro_num}', '${bu.bu_email}')">방 정보</button>
				  		</div>
				  		<div class="col-sm-6">
				  			<input type="submit" class="reserve_room_btn default_btn medium_text"
						  		<c:if test="${roomMap[ro_num] == true}">disabled value="예약된 방"</c:if>
								<c:if test="${roomMap[ro_num] == false}">value="예약"</c:if>
					  		>
				  		</div>
				  </div>
				</div>
			</form>   
		</c:forEach>
    

  </div>
</div>
</body>
</html>