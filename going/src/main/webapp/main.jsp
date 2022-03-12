<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style>
p {
margin: 0;}
a {
list-style: none;
text-decoration: none;
}
.boxmain2 {
position: relative;
width: 1920px;
height: 70px;
}
.box3 {
position: absolute;
left: 30%;
top: 10%;
display: flex;
width: 1920px;
}
.box4 {
height: 24px;
margin-left: 10px;
}
.leftsearch {
margin-top: 100px;
margin-left: 300px;
}
.sbox1 {
border: 1px solid gray;
width: 300px;
}
.line {
margin-left: 30px;
height: 370px;
}
.mainbox2 {
display: flex
}
.moklok {
margin-left: 50px;
margin-top: 100px;
}
.jido {
margin-left: 10px;
}
.garo {
display: flex
}
strong {
color: black;
margin-left: 10px;
}
.pung {
margin-left: 10px;
color: #F29661
}
.a {
margin-left: 10px;
color: black;
pont-size: 10px;
}
.price {
margin-left: 10px;
color: black;
text-align: right;
}
.b{
margin-left: 10px;
color: black;
text-align: right;
text-decoration: line-through;
}
.c {
width: 400px;
}
* {
list-style: none;
text-decoration: none;
border-collapse: collapse;
margin: 0px;
padding: 0px;
color: #000;
}
.backgroundimage {
background-image: url("back.png");
width: 100%;
height: 700px;
}
.boxmain {
border-radius: 10px; 
height: 120px;
width: 900px;
background: white;
position:relative;
top:30%;
left:50%;
transform:translate(-50%,-50%);}
}
.Search {
display:inline
}
.h3box {
margin: 10px;
height: 30px;
}
h3 {
color: blue;
}
.box1 {
display: flex;
margin-left: 125px;
margin-top: 20px;
}
.Searchsize {
height: 24px;
}
.boxspcae {
margin-left: 10px;
}
.teltitle {
margin-left: 30px;
margin-top: 30px;
width: 500px;
}
h2 {
width: 500px;
}
.box2 {
display: flex;
margin-left: 200px;
}
</style>
<body>
	<div class=backgroundimage>
		<div class=boxmain>
		<div class=h3box>
	<h3>놀러갈 곳은 어디인가요?</h3>
		</div>
		<div class=box1>
				<div>
					<span>체크인<br> <input type=date></span>
				</div>
				<div class=Search>
					<span>체크아웃<br> <input type=date></span>
				</div>
				<div class=Search style=margin-left:10px>
					<span>성인<br>
					<select class=Searchsize>
						<option>1명</option>
						<option>2명</option>
						<option>3명</option>
						<option>4명</option>
						<option>5명</option>
						<option>6명</option>
					</select>
					</span>
				</div>
				<div class=Search style=margin-left:10px>
					<span>아동<br>
					<select class=Searchsize>
						<option>1명</option>
						<option>2명</option>
						<option>3명</option>
						<option>4명</option>
						<option>5명</option>
						<option>6명</option>
					</select>
					</span>
				</div>
				<div style=margin-left:10px>
					<span>객실<br>
					<select class=Searchsize>
						<option>1개</option>
						<option>2개</option>
						<option>3개</option>
						<option>4개</option>
						<option>5개</option>
						<option>6개</option>
					</select>
					</span>
				</div>
					<span style=margin-left:10px><br>
					<input type=search class=Searchsize placeholder=지역,숙소명>
					<a><input type=submit class=Searchsize value=검색></a>
					</span>
		</div>
			</div>
		</div>
		<div class=box2>
		<div class=teltitle>
		<h2>호텔</h2>
		<a><img src="ho.jpg"></a>
		</div>
		<div class=teltitle>
		<h2>모텔</h2>
		<a><img src="mo.jpg"></a>
		</div>
		</div>
		<div class=box2>
		<div class=teltitle>
		<h2>펜션</h2>
		<a><img src="pen.jpg"></a>
		</div>
		<div class=teltitle>
		<h2>리조트</h2>
		<a><img src="re.jpg"></a>
		</div>
		</div>
		
		
<hr style=margin-top:100px>
<div class=boxmain2>
	<div class=box3>
		<div>
			<span>체크인<br><input type=date></span>
		</div>
		<div>
			<span>체크아웃<br><input type=date></span>
		</div>
		<div>
			<span>&nbsp;&nbsp;성인<br>
			<select class=box4>
				<option>1명</option>
				<option>2명</option>
				<option>3명</option>
				<option>4명</option>
				<option>5명</option>
				<option>6명</option>
			</select></span>
		</div>
		<div>
			<span>&nbsp;&nbsp;아동<br>
			<select class=box4>
				<option>1명</option>
				<option>2명</option>
				<option>3명</option>
				<option>4명</option>
				<option>5명</option>
				<option>6명</option>
			</select></span>
		</div>
		<div>
			<span>&nbsp;&nbsp;객실<br>
			<select class=box4>
				<option>1개</option>
				<option>2개</option>
				<option>3개</option>
				<option>4개</option>
				<option>5개</option>
				<option>6개</option>
			</select></span>
		</div>
		<div>
			<span><br>
			<input type=search class=box4>
			<input type=submit value=검색></span>
		</div>
	</div>
</div>
<hr>
<div class=mainbox2>
<div class=leftsearch>
	<div class=sbox1>
	<div class=line>
	<h2>상세검색</h2>
	<button type=button>적용</button>
	<button type=reset>초기화</button><br>
	<h4>숙소 유형</h4>
	<input type=checkbox> 호텔<br>
	<input type=checkbox> 모텔<br>
	<input type=checkbox> 펜션<br>
	<input type=checkbox> 리조트<br>
	<h4>가격<label id="output">&nbsp;1</label>만원</h4>
	<input type=range min=1 max=70 step=1 value=1 oninput="document.getElementById('output').innerHTML=this.value"><br>
	1만원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;70만원
	</div>
	</div>
</div>
<div class=moklok>
	<div>
		<div><input type=button value=거리순 style=margin-left:40px><input type=button value=가격순><a><input type=button value=지도 class=jido></a></div>
	</div>
	<div class=garo>
	<div>
	<img src=si.jpg>
	</div>
	<div class=c>
	<strong>시그니엘 부산</strong><br><p class=pung>9.9 최고에요 (216)</p><p class=a>해운대 해수욕장 도보 3분</p><br><br><br><br>
	<p class=b>907,500</p><p class=price>338,800원</p>
	</div>
	</div>
	</div>
</div>
</body>
</html>