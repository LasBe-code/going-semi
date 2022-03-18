<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
</head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(function(){
	$('#checkin').change(function() {
		  var nextDay = $('#checkin').datepicker('getDate', '+1d'); 
		  nextDay.setDate(nextDay.getDate()+1); 
		  $('#checkout').datepicker('setDate', nextDay);
		});
	$('#checkout').change(function() {
		  var yesterDay = $('#checkout').datepicker('getDate', '+1d'); 
		  yesterDay.setDate(yesterDay.getDate()-1);
		  $('#checkin').datepicker('setDate', yesterDay);
		});
	$("#checkin").datepicker({
		        changeMonth: true
		        ,changeYear :true
		        ,dateFormat: "mm월 d일 DD"
		        ,dayNames : ['(월)','(화)','(수)','(목)','(금)','(토)','(일)']
		        ,dayNamesMin : ['월','화','수','목','금','토','일']
		        ,monthNamesShort:  [ "1월", "2월", "3월", "4월", "5월", "6월","7월", "8월", "9월", "10월", "11월", "12월" ]
		        ,showOtherMonths: true
		        ,minDate: "0"
		        ,onClose: function( selectedDate ) {
				$("#checkout").datepicker("option","minDate", nextDay);
		        }
	})
	$("#checkout").datepicker({
        changeMonth: true
        ,changeYear :true
        ,dateFormat: "mm월 d일 DD"
        ,dayNames : ['(월)','(화)','(수)','(목)','(금)','(토)','(일)']
        ,dayNamesMin : ['월','화','수','목','금','토','일']
        ,monthNamesShort:  [ "1월", "2월", "3월", "4월", "5월", "6월","7월", "8월", "9월", "10월", "11월", "12월" ]
        ,showOtherMonths: true
        ,minDate: "+1"
        ,onClose: function( selectedDate ) {
			$("#checkin").datepicker("option","maxDate", yesterDay)
        }
	});	
$('#checkin').datepicker('setDate', 'today');
$('#checkout').datepicker('setDate', '+1');
});
</script>
<body>
	<div class=main_first_box>
		<div>
			<div class=main_twice_box>
				<ul class="nav nav-tabs nav-justified">
				  <li class="nav-item">
				    <a class="nav-link active" data-bs-toggle="tab" style="color:black;"
				    	onclick="document.getElementById('bu_id').value='1'">호텔</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-bs-toggle="tab" style="color:black;"
				    	onclick="document.getElementById('bu_id').value='2'">모텔</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-bs-toggle="tab" style="color:black;"
				    	onclick="document.getElementById('bu_id').value='3'">펜션</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-bs-toggle="tab" style="color:black;"
				    	onclick="document.getElementById('bu_id').value='4'">리조트</a>
				  </li>
				</ul>
				<input type="hidden" name="bu_id" id="bu_id" value="1">
				<div class="main_search_all" style="padding-top:10px;">
					<div class=main_checkinout>
						<div role=button>
							<div class="main_checkinout_buttonbox">
								<div>
									<input type='button' id="checkin" class="main_checkin_1" value="체크인">
								</div>
								<div>
									<input type='button' id="checkout" class="main_checkout_1" value="체크아웃">
								</div>
							</div>
						</div>
					</div>
					<div class=main_count_box>
						<div role="button" style="border-left: 1px solid #c8c8c8;">
							<div>
								<button class="main_checkin_1 " data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" type="button" >
									<div class="collapse" id="collapseExample">
									<div class="well">
									성인	: 1
									아동	: 0
									객실	: 1
									</div>
									</div>
								</button>
							</div>
						</div>
					</div>
					<div style="border-left: 1px solid #c8c8c8;">
					<input type=search class=main_search_text placeholder=지역,숙소명>
					</div>
				<div class=main_search_button_box>
				<button type=submit class="main_search_button" onclick="location='search.html'">검색</button>
				</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main_categorybox">
		<div class=main_floor>
		<div class="main_categoryone">
			<h3 style="color:gray;">호텔</h3>
			<a href=#>
			<img class=main_image_size src=https://pix10.agoda.net/hotelImages/5442478/0/59658259652dae9c04f3229b87fdedd4.jpg?ca=23&ce=0&s=1024x768>
			</a>
		</div>
		<div class="main_categoryone">
			<h3 style="color:gray;">모텔</h3>
			<a href=#>
			<img class=main_image_size src=https://i.travelapi.com/hotels/17000000/16730000/16727700/16727640/42a70b89_z.jpg>
			</a>
		</div>
		</div>
		<div class=main_floor>
		<div class="main_categoryone">
			<h3 style="color:gray;">펜션</h3>
			<a href=#>
			<img class=main_image_size src=https://uploads-ssl.webflow.com/5e5cad32512f4ebf86ae2fa1/5e942f6e5f867827a4659114_mrp_6140-hdr.jpeg>
			</a>
		</div>
		<div class="main_categoryone">
			<h3 style="color:gray;">리조트</h3>
			<a href=#>
			<img class=main_image_size src=https://images.chosun.com/resizer/z171wP8hn0uIczVRiOpLA2t8pRI=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/7UICRHCEMBBJNKPPY263O3AMEY.jpg>
			</a>
		</div>
		</div>
	</div>
</body>
</html>