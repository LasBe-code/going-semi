<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/style.css">
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
</script>
<body>
<div class=default_width>
		<hr class=search_bottom_line>
		<div class=search_bottom_box>
			<div class=search_filter_box>
			<h3>상세조건</h3>
			<form action="${pageContext.request.contextPath}/search/search" method="get">
			<div>
				<input type='date' id="checkin" class="main_checkin_1" name="checkin" value="${checkin}">
			</div>
			<div>
				<input type='date' id="checkout" class="main_checkout_1" name="checkout" value="${checkout}">
			</div>
				<div class=search_button_box>
				<button type=submit class=search_commit_button_size>적용</button>
					<div>
					</div>
				</div>
				<div class=search_select_box>
				<div>
				<strong class="search_strong_font">숙소 유형</strong>
				<ul class="search_detail_ul">
				<li>
				<input type="checkbox" name="bu_id" value="1">
				<label class="search_label_font">호텔</label>
				</li>
				<li>
				<input type="checkbox" name="bu_id" value="2">
				<label class="search_label_font">모텔</label>
				</li >
				<li>
				<input type="checkbox" name="bu_id" value="3">
				<label class="search_label_font">펜션</label>
				</li>
				<li>
				<input type="checkbox" name="bu_id" value="4">
				<label class="search_label_font">리조트</label>
				</li>
				</ul>
				</div>
				</div>
			</form>
			</div>
			<div class="search_list_mainbox">
			<div class="search_button_box2">
			<button type="button" class="search_km_button">거리순</button>
			<button type="button" class="search_price_button">낮은 가격 순</button>
			<button type="button" class="search_map_button">지도</button>
			</div>
			<c:forEach var="c" items="${list}">
			<div class="search_list_box">
			<a href="${pageContext.request.contextPath}/entrepreneur/roomlist" class="search_list_abox">
			<div class="search_list_imgbox">
			<img src="" class="search_list_img">
			</div>
			<div class="search_list_name">
			<strong class="search_list_striong"></strong><br>
			<p class="search_review_text"></p>
			<b class="search_km_info"></b>
			<div class="search_price_box">
			<p class="search_rocount"></p><p class="search_price">${c.ro_price}</p>
			</div>
			</div>
			</a>
			</div>
			</c:forEach>
			<hr>
			</div>
		</div>
	</div>
</body>
</html>