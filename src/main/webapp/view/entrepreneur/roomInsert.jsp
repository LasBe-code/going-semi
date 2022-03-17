<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container" style="width: 800px; margin-top: 100px;">
<h2 style="text-align: center;">객실등록</h2>
  <form action="${pageContext.request.contextPath}/room/roomInsertPro" enctype="multipart/form-data" method="post">
    <div class="mb-3 mt-3">
      <label>객실이름</label>
      <input type="text" class="form-control" id="subject" name="roName">
    </div>
    <div class="mb-3">
      <label>가격</label>
      <input type="text" class="form-control" id="cal" name="roPrice">
    </div>
	    <div style="width: 200px; float: left;">
	    	<label>체크인 시간</label>
	    	<input type="time" class="form-control" id="checkIn" name="checkIn">
	    </div>
	    <div style="width: 200px; float:left; margin-bottom: 20px; margin-left: 20px;">
	    	<label>체크아웃 시간</label>
	    	<input type="time" class="form-control" id="checkOut" name="checkOut">
    	</div>
    <div style="clear:both;"></div>
    
    <div class="mb-3" style="margin-top: 20px;">
    <label>객실이용인원</label>
    <select id="people" name="roCount">
    	<option>1</option>
    	<option>2</option>
    	<option>3</option>
    	<option>4</option>
    </select>
    </div>
	<div class="mb-3" >
    	<label style=" margin-bottom: 10px;">객실기본정보&nbsp;&nbsp;&nbsp;</label><span id="byteInfo" style="display: inline;">0</span> /3900bytes
   		<textarea rows="10" cols="100" name="roomInfo" onKeyUp="javascript:fnChkByte(this,'3900')"></textarea>
    </div>
    <div style="margin-bottom: 30px;">
    	<label>객실 사진</label>
    	<input type="file" id = "multi-inputImg" name="picLocation">
    </div>
    <div id = "room_Update_multi_picture"></div>
    <button type="submit" class="default_btn rounded mt-1" style="width:100px;margin:auto; display:block;">등록</button>
  </form>

</div>
<script type="text/javascript">
/**
 * 멀티파일 업로드
 */
function readMultipleImage(input) {
    const multipleContainer = document.getElementById('room_Update_multi_picture')
    
    if(input.files) {
        console.log(input.files)
        const fileArr = Array.from(input.files)
        const $colDiv1 = document.createElement('div')
        const $colDiv2 = document.createElement('div')
        const $colDiv3 = document.createElement('div')
        $colDiv1.classList.add('column')
        $colDiv2.classList.add('column')
        $colDiv3.classList.add('column')
        fileArr.forEach((file, index) => {
            const reader = new FileReader()
            const $imgDiv = document.createElement('div')   
            const $img = document.createElement('img')
            $img.classList.add('room_Update_image')
            const $label = document.createElement('label')
            $label.classList.add('room_Update_image_label')
            $label.textContent = file.name
            $imgDiv.appendChild($img)
            $imgDiv.appendChild($label)
            reader.onload = e => {
                $img.src = e.target.result
                
                //$imgDiv.style.width = ($img.naturalWidth) * 0.2 + "px"
                //$imgDiv.style.height = ($img.naturalHeight) * 0.2 + "px"
            }
            
            console.log(file.name)
            if(index % 3 == 0) {
                $colDiv1.appendChild($imgDiv)
            } else if(index % 3 == 1){
                $colDiv2.appendChild($imgDiv)
            }else{
                $colDiv3.appendChild($imgDiv)
            }
            
            reader.readAsDataURL(file)
        })
        multipleContainer.appendChild($colDiv1)
        multipleContainer.appendChild($colDiv2)
        multipleContainer.appendChild($colDiv3)
    }
}


// 이벤트 리스너
document.getElementById('multi-inputImg').addEventListener('change', (e) => {
    readMultipleImage(e.target);
})


//Byte 수 체크 제한
function fnChkByte(obj, maxByte)
{
    var str = obj.value;
    var str_len = str.length;


    var rbyte = 0;
    var rlen = 0;
    var one_char = "";
    var str2 = "";


    for(var i=0; i<str_len; i++)
    {
        one_char = str.charAt(i);
        if(escape(one_char).length > 4) {
            rbyte += 3;                                         //한글3Byte
        }else{
            rbyte++;                                            //영문 등 나머지 1Byte
        }
        if(rbyte <= maxByte){
            rlen = i+1;                                          //return할 문자열 갯수
        }
     }
     if(rbyte > maxByte)
     {
        // alert("한글 "+(maxByte/2)+"자 / 영문 "+maxByte+"자를 초과 입력할 수 없습니다.");
        alert("메세지는 최대 " + maxByte + "byte를 초과할 수 없습니다.")
        str2 = str.substr(0,rlen);                                  //문자열 자르기
        obj.value = str2;
        fnChkByte(obj, maxByte);
     }
     else
     {
        document.getElementById('byteInfo').innerText = rbyte;
     }
}
  
</script>
</body>
</html>