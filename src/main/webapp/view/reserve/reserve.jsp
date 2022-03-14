<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="#" class="default_width mt-5">
	<div class="row" style="margin: 0 auto !important;">
	  <div class="col-sm-8 reserve_left">
	    <b class="large_text">예약자 정보</b>
	      <div class="mt-5"><strong class="user_profile">예약자 이름</strong></div>
	      <input type="text" class="form-control form-control-lg mt-3" placeholder="장성우">
	
	      <div class="mt-5">
	        <strong class="user_profile">휴대폰 번호</strong> <br>
	        <input type="text" class="form-control form-control-lg mt-3" placeholder="01012345678">
	      </div>
	
	      <div class="mt-5">
	        <strong class="user_profile">결제방식</strong> <br>
	        <select class="form-select form-select-lg mt-3" style="width: 200px;">
	          <option>카카오페이</option>
	          <option>네이버페이</option>
	          <option>신용카드</option>
	        </select>
	      </div>
	
	      <div class="mt-5">
	        <div class="form-check">
	          <input type="checkbox" class="form-check-input" id="check1" name="option1" value="something" checked>
	          <label class="form-check-label" for="check1">숙소이용규칙 및 취소/환불규정 동의</label>
	        </div>
	        <div class="form-check">
	          <input type="checkbox" class="form-check-input" id="check2" name="option2" value="something">
	          <label class="form-check-label" for="check2">개인정보 수집 및 이용 동의</label>
	        </div>
	        <div class="form-check">
	          <input type="checkbox" class="form-check-input" id="check2" name="option2" value="something">
	          <label class="form-check-label" for="check2">개인정보 제 3자 제공 동의</label>
	        </div>
	        
	      </div>
	  </div>
	
	  <div class="col-sm-4 reserve rounded">
	    <div class="reserve_body">
	      <p class="reserve_info">
	        <strong class="reserve_name">숙소이름</strong> <br>
	        신라스테이 역삼
	      </p>
	      <p class="reserve_info">
	        <strong class="reserve_name">객실타입</strong> <br>
	        스텐다드 더블
	      </p>
	      <p class="reserve_info">
	        <strong class="reserve_name">체크인</strong> <br>
	        03.10 목 15:00
	      </p>
	      <p class="reserve_info">
	        <strong class="reserve_name">체크아웃</strong> <br>
	        03.11 금 12:00
	      </p>
	    </div>
	
	    <div class="reserve_body">
	      <strong class="reserve_name" style="color: black;">총 결제 금액</strong> <br>
	      <strong class="reserve_name" style="color: #ffc107; font-size: 30px;">110,000원</strong> <br>
	    </div>
	    <input type="submit" value="결제하기"
	    	style="width: 100%; height: 56px; background-color: #ffc107; color: white; border: none;">
	  </div>
	  
	</div>
</form>
</body>
</html>