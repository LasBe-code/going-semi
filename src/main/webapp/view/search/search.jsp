<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css?바로적용">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
<div class=default_width>
		<hr class=search_top_line>
		<div class=search_first_box>
			<div>
				<div class=search_twice_box>
					<div class=main_search_all>
						<div class=main_checkinout>
							<div role=button>
								<div class=main_checkinout_buttonbox>
									<div>
										<input type='button' id="checkin" class=main_checkin_1 value="체크인">
									</div>
									<div>
										<input type='button' id="checkout" class=main_checkout_1 value="체크아웃">
									</div>
								</div>
							</div>
						</div>
						<div class=main_count_box>
							<div role="button">
								<div>
									<button class=main_checkin_1 data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" type="button">
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
						<div>
						<input type=search class=main_search_text placeholder=지역,숙소명>
						</div>
					<div class=main_search_button_box>
					<button type=submit class=main_search_button onclick="location='search.html'">검색</button>
					</div>
					</div>
				</div>
			</div>
		</div>
		<hr class=search_bottom_line>
		<div class=search_bottom_box>
			<div class=search_filter_box>
			<h3>상세조건</h3>
				<div class=search_button_box>
				<button type=button class=search_reset_button_size>초기화</button>
				<button type=submit class=search_commit_button_size>적용</button>
					<div>
					</div>
				</div>
				<div class=search_select_box>
				<div>
				<strong class="search_strong_font">숙소 유형</strong>
				<ul class="search_detail_ul">
				<li>
				<input type="checkbox" value=1>
				<label class="search_label_font">호텔</label>
				</li>
				<li>
				<input type="checkbox" value=2>
				<label class="search_label_font">모텔</label>
				</li >
				<li>
				<input type="checkbox" value=3>
				<label class="search_label_font">펜션</label>
				</li>
				<li>
				<input type="checkbox" value=4>
				<label class="search_label_font">리조트</label>
				</li>
				</ul>
				</div>
				</div>
			</div>
			<div class="search_list_mainbox">
			<div class="search_button_box2">
			<button type="button" class="search_km_button">거리순</button>
			<button type="button" class="search_price_button">낮은 가격 순</button>
			<button type="button" class="search_map_button">지도</button>
			</div>
			<div class="search_list_box">
			<a href="#" class="search_list_abox">
			<div class="search_list_imgbox">
			<img src="https://content.r9cdn.net/himg/cc/69/ae/revato-1865922-12031689-093701.jpg" class="search_list_img">
			</div>
			<div class="search_list_name">
			<strong class="search_list_striong">스카이베이호텔 경포</strong><br>
			<p class="search_review_text">9.0&nbsp;추천해요&nbsp;(2874)</p>
			<b class="search_km_info">강문해변 차량 2분</b>
			<div class="search_price_box">
			<p class="search_rocount">남은 객실 2개</p><p class="search_price">155,000원</p>
			</div>
			</div>
			</a>
			</div>
			<hr>
			</div>
		</div>
	</div>
</body>
</html>