<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/style.css">
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
	      <img src="<%=request.getContextPath()%>/image/1.jpg" width="1100" height="500">
	    </div>
	    <div class="carousel-item">
	      <img src="<%=request.getContextPath()%>/image/2.jpg" width="1100" height="500">
	    </div>
	    <div class="carousel-item">
	      <img src="<%=request.getContextPath()%>/image/3.jpg" width="1100" height="500">
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
		<h5 style=" margin-bottom: 30px;">스탠다드 더블&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가격 : 65,000원</h5>
		<ul>
			<li>체크인 15:00부터 체크아웃 12:00까지</li>
			<li>5.3평, 더블침대</li>
			<li>2인기준 / 인원 추가 불가</li>
			<li>에어컨, TV, 냉장고, 커피포트, 생수</li>
			<li>샤워시설, 비데, 욕실용품, 드라이기, 가운</li>
			<li>무료 WIFI</li>
			<li>금연객실</li>
		</ul>
		<h4 style="text-align: center; margin-bottom: 30px;">예약공지</h4>
		<ul>
			<li>[코로나 관련 안내 사항]</li>
			<li>▶ 부대시설 이용 안내</li>
			<li>정부의 방역지침에 따라 대욕장 이용이 불가능 하신분</li>
			<li>①백신 접종이 2차까지 완료되지 않으신분과 접종후 14일이 경과하지 않으신분</li>
			<li>②48시간이 지나지 않은 PCR 음성 결과 확인서가 없으신 분</li>
			<li>목욕탕 이용시 상시 마스크 착용 필수</li>
			<li>2차접종까지 백신 접종 완료되신 분은 프론트에 증명서 제출 또는 어플을 통해 증명해 주셔야 이용이 가능하십니다.</li>
			<li>방역패스 예외자:만18세 이하 아동 청소년,완치자, 의학적 사유로 인한 백신 접종 예외자/예외자에 경우 "접종증명,음성확인제 예외 확인서" 서류를 지참하셔서 보여주셔야 이용이 가능하십니다.</li>
			<li>▶ 라멘서비스 및 대욕장 이용 안내</li>
			<li>12/18일부터 정부의 거리두기로 인해 부대시설 이용정보가 변경 되었으니 양해 부탁드리겠습니다.</li>
			<li>1) 야식 라멘서비스 - 일본식 간장라면(요나키 소바)</li>
			<li>이용 가능시간: 19:30~20:30/21:00 CLOSE (레스토랑에서 제공)</li>
			<li>2) 대욕장</li>
			<li>이용 가능시간: 05:00~10:00 / 15:00~22:00</li>
			<li>이용 중지시간: 22:00~05:00</li>
			<li>체크인 15:00 이후, 체크아웃 12:00 이전</li>
			<li>내국인 전용 상품으로 외국인은 투숙이 불가하며, 국내 거주하는 외국인의 경우 투숙 가능</li>
			<li>(국내 거소증 또는 외국인등록증 확인 필수)</li>
			<li>부모동반 아동 투숙 1명 가능(6세이하 무료)</li>
			<li>초등학생 16,500원</li>
			<li>무료 주차</li>
			<li>※ 주차는 선착순으로 주차장 만차 시 주차가 불가할 수 있습니다</li>
			<li>※ 단,일부상품 (주차 불가상품) 예약시 주차불가하오니 이용시 참고 부탁드립니다</li>
			<li>*만차 시 주변 유료 주차장을 이용 부탁드리며, 발생되는 비용은 투숙객이 직접 지불 하셔야 합니다.</li>
			<li>*안내한 곳 외에 무단주차는 책임지지 않습니다.</li>
		</ul>
		  <input type="button" class="default_btn rounded mt-1" value="정보수정" onclick="location.href='<%=request.getContextPath()%>/view/entrepreneur/roomUpdate.jsp'">
	</div>
</div>
</body>
</html>