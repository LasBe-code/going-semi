<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
      <b class="large_text"><span class="badge bg-warning">호텔</span> 신라스테이 역삼</b>
      <p class="gray_text"><img src="https://cdn4.iconfinder.com/data/icons/music-ui-solid-24px/24/location_map_marker_pin-2-512.png" style="width: 20px;"> 서울 강남구 역삼동 675-3</p>
      <div class="event-bg text-white rounded">
        <ul>
          <li>호텔 조식 1+1 제공</li>
          <li>24시간 스테이</li>
          <li>조식 3인</li>
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

    <form action="<%=request.getContextPath()%>/view/reserve/reserve.jsp">

      <div class="reserve_room">
        <p class="reserve_pic_view">
          <img src="https://image.goodchoice.kr/resize_370x220/affiliate/2017/06/22/594b62844c51f.jpg" alt="">
        </p>
        <strong class="reserve_room_title">스텐다드 더블</strong>
        <div class="reserve_room_price row">
          <div class="col-sm-6">
            <strong class="medium_text">가격</strong>
          </div>
          <div class="col-sm-6 right_text">
            <b class="large_text">110,000원</b>
          </div>
        </div>
        <input type="submit" class="reserve_room_btn default_btn medium_text" value="예약">
      </div>

      <div class="reserve_room">
        <p class="reserve_pic_view">
          <img src="https://image.goodchoice.kr/resize_370x220/affiliate/2021/08/30/612c95ab1d16c.jpg" alt="">
        </p>
        <strong class="reserve_room_title">스텐다드 트윈</strong>
        <div class="reserve_room_price row">
          <div class="col-sm-6">
            <strong class="medium_text">가격</strong>
          </div>
          <div class="col-sm-6 right_text">
            <b class="large_text">120,000원</b>
          </div>
        </div>
        <input type="submit" class="reserve_room_btn default_btn medium_text" value="예약">
      </div>

    </form>

  </div>
</div>
</body>
</html>