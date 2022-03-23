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
</script>
<body>
	<div class=main_first_box>
		<div>
		<form action="${pageContext.request.contextPath}/search/search" method="get">
			<div class=main_twice_box>
				<ul class="nav nav-tabs nav-justified">
				  <li class="nav-item">
				    <a class="nav-link active" data-bs-toggle="tab" style="color:black; cursor:pointer"
				    	onclick="document.getElementById('bu_id').value='1'">호텔</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-bs-toggle="tab" style="color:black; cursor:pointer"
				    	onclick="document.getElementById('bu_id').value='2'">모텔</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-bs-toggle="tab" style="color:black; cursor:pointer"
				    	onclick="document.getElementById('bu_id').value='3'">펜션</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-bs-toggle="tab" style="color:black; cursor:pointer"
				    	onclick="document.getElementById('bu_id').value='4'">리조트</a>
				  </li>
				</ul>
				<input type="hidden" name="bu_id" id="bu_id" value="1">
				<div class="main_search_all" style="padding-top:10px;">
					<div class=main_checkinout>
						<div role=button>
							<div class="main_checkinout_buttonbox">
								<div>
									<input type='date' id="checkin" min="today" class="main_checkin_1" name="checkin">
								</div>
								<div>
									<input type='date' id="checkout" class="main_checkout_1" name="checkout">
								</div>
							</div>
						</div>
					</div>
					<div class=main_count_box>
						<div role="button" style="border-left: 1px solid #c8c8c8;">
							<div>
							</div>
						</div>
					</div>
					<div style="border-left: 1px solid #c8c8c8;">
					<input type=search class=main_search_text placeholder=지역,숙소명 name="bu_address">
					</div>
				<div class=main_search_button_box>
				<button type=submit class="main_search_button">검색</button>
				</div>
				</div>
			</div>
		</form>
		</div>
	</div>
	<div class="main_categorybox">
		<div class=main_floor>
		<div class="main_categoryone">
			<h3 style="color:gray;">호텔</h3>
			<a href="${pageContext.request.contextPath}/search/search?bu_id=1">
			<img class=main_image_size src=https://pix10.agoda.net/hotelImages/5442478/0/59658259652dae9c04f3229b87fdedd4.jpg?ca=23&ce=0&s=1024x768>
			</a>
		</div>
		<div class="main_categoryone">
			<h3 style="color:gray;">모텔</h3>
			<a href="${pageContext.request.contextPath}/search/search?bu_id=2">
			<img class=main_image_size src=https://i.travelapi.com/hotels/17000000/16730000/16727700/16727640/42a70b89_z.jpg>
			</a>
		</div>
		</div>
		<div class=main_floor>
		<div class="main_categoryone">
			<h3 style="color:gray;">펜션</h3>
			<a href="${pageContext.request.contextPath}/search/search?bu_id=3">
			<img class=main_image_size src=https://uploads-ssl.webflow.com/5e5cad32512f4ebf86ae2fa1/5e942f6e5f867827a4659114_mrp_6140-hdr.jpeg>
			</a>
		</div>
		<div class="main_categoryone">
			<h3 style="color:gray;">리조트</h3>
			<a href="${pageContext.request.contextPath}/search/search?bu_id=4" >
			<img class=main_image_size src=https://images.chosun.com/resizer/z171wP8hn0uIczVRiOpLA2t8pRI=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/7UICRHCEMBBJNKPPY263O3AMEY.jpg>
			</a>
		</div>
		</div>
	</div>
</body>
</html>