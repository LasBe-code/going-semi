<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <a href="<%= request.getContextPath()%>/view/reservationList/reservationList.jsp">예약내역<br><br></a>
    <a href="<%= request.getContextPath()%>/view/memberInfo/memberInfo.jsp">내정보관리<br><br></a>
    </div>
    
    <!-- 예약완료 -->
      <div class="col-sm-5" >
     <p class="reservationList_large_text"><b>예약 내역</b></p>
      <p class="reservationList_medium_text">예약 완료</p>
        <table class="reservationList_table">
      <tr>
      <td>
      <img class="reservationList_image"
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2017/04/12/58edebf180d1e.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">예약완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>오션스위츠 제주</b><br>
      11.13 토 - 11.14 일<b>ㆍ</b>1박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px; background-color: red;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>예약취소</b></button>
      </td>
      </tr>
      </table>
      
      <table class="reservationList_table" style="margin-top: 40px;"  >
      <tr>
      <td>
      <img class="reservationList_image"
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2021/05/07/6094f3d707503.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">예약완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>양평 풀스테이 조이 풀빌라</b><br>
      03.13 일 - 03.15 화<b>ㆍ</b>2박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px; background-color: red; " 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>예약취소</b></button>
      </td>
      </tr>
      </table>
      </div>
      
      <div class="col-sm-5" >
       <table class="reservationList_table" style="margin-top:184px;"   >
      <tr>
      <td>
      <img class="reservationList_image" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2021/10/18/12/aeb384a3ae92496aa3fed2180b6cfdc8.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">예약완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>양평 독채펜션 빌라엘라</b><br>
      11.14 일 - 11.16 화<b>ㆍ</b>2박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px; background-color: red;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>예약취소</b></button>
      </td>
      </tr>
      </table>
      
      <table class="reservationList_table" style="margin-top: 40px;"  >
      <tr>
      <td>
      <img class="reservationList_image" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2018/07/19/5b503e30d79b6.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">예약완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>마이다스 호텔 & 리조트</b><br>
      03.21 월 - 03.22 화<b>ㆍ</b>1박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px; background-color: red;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>예약취소</b></button>
      </td>
      </tr>
      </table>
      </div>
      
      
      <!-- 이용완료 -->
      <div class="col-sm-2"></div>
        <div class="col-sm-5" >
      <p class="medium_text" style="margin-top: 100px;">이용 완료</p>
       <table class="reservation_form_table"   >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2019/12/16/5df725fda53ad.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">이용완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>더스타휴빌리지</b><br>
      04.04 월 - 04.05 화<b>ㆍ</b>1박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>이용완료</b></button>
      </td>
      </tr>
      </table>
      
      <table class="reservation_form_table" style="margin-top: 40px;"  >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2016/05/26/574681a23f0e2.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">이용완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>썬밸리호텔 여주</b><br>
      01.03 월 - 01.05 수<b>ㆍ</b>2박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>이용완료</b></button>
      </td>
      </tr>
      </table>
      </div>
      
      <div class="col-sm-5" >
       <table class="reservation_form_table" style="margin-top:146px;"   >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/adimg_new/3858/4082/8609699a540f344fad7b057af22d0ce7.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">이용완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>서귀포 제이뷰</b><br>
      11.17 수 - 11.18 목<b>ㆍ</b>1박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>이용완료</b></button>
      </td>
      </tr>
      </table>
      
      <table class="reservation_form_table" style="margin-top: 40px;"  >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2021/07/29/23/cfacb82d640647dfbafc874decc28dad.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">이용완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>담양 방아재한옥펜션</b><br>
      03.24 목 - 03.25 금<b>ㆍ</b>1박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>이용완료</b></button>
      </td>
      </tr>
      </table>
      </div>
      
      
      <!-- 취소완료 -->
        <div class="col-sm-2"></div>
        <div class="col-sm-5" >
      <p class="medium_text" style="margin-top: 100px;">취소 완료</p>
        <table class="reservation_form_table"   >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2022/03/02/621f0c9d95b28.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">취소완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>부산 카이브펜션</b><br>
      11.15 월 - 11.16 화<b>ㆍ</b>1박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>취소완료</b></button>
      </td>
      </tr>
      </table>
      
      <table class="reservation_form_table" style="margin-top: 40px;"  >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2020/09/07/5f55dd379ce58.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">취소완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>엘시티(LCT) 레지던스</b><br>
      01.08 수 - 01.10 금<b>ㆍ</b>2박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>취소완료</b></button>
      </td>
      </tr>
      </table>
      </div>
      
      <div class="col-sm-5" >
       <table class="reservation_form_table" style="margin-top:146px;"   >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2022/02/18/620f1a13a01f2.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">취소완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>쏠비치 삼척 리조트</b><br>
      08.23 화 - 08.24 수<b>ㆍ</b>1박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>취소완료</b></button>
      </td>
      </tr>
      </table>
      
      <table class="reservation_form_table" style="margin-top: 40px;"  >
      <tr>
      <td>
      <img class="reservation_form_img"  width="400px" height="180px" 
      src="https://image.goodchoice.kr/resize_490x348/affiliate/2019/07/02/5d1afb7a0078a.jpg" ></td>
      </tr>
      <tr align=center>
       <td width="400px" height="150px">
      <p class="small_text" style="padding-top: 10px; margin-bottom: -20px;">취소완료</p><br>
      <a class="medium_text" 
      style="cursor:pointer; color:black;  text-decoration-line: none;  " 
      href="location.herf='<%=request.getContextPath()%>/view/member/reservationDetail.jsp'">
      <b>인터컨티넨탈 서울 코엑스</b><br>
      09.11 월 - 09.13 수<b>ㆍ</b>2박 </a><br>
      <button class="default_btn rounded" type="button" style="height: 30px; width:100px; margin-top: 5px;" 
      onclick="location.href='<%= request.getContextPath()%>/view/member/reservationCancelDetail.jsp'"><b>취소완료</b></button>
      </td>
      </tr>
      </table>
      </div>

</div>
</div>

</body>
</html>