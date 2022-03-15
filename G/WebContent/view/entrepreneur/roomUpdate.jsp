<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/common/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container" style="width: 800px; margin-top: 100px;">
<h2 style="text-align: center;">객실정보수정</h2>
  <form action="<%=request.getContextPath()%>/view/entrepreneur/roomlist.jsp">
    <div class="mb-3 mt-3">
      <label>객실이름</label>
      <input type="text" class="form-control" id="subject" name="subject">
    </div>
    <div class="mb-3">
      <label>가격</label>
      <input type="text" class="form-control" id="cal" name="cal">
    </div>
    <div class="mb-3">
      <label>편의시설</label>
      <input type="text" class="form-control" id="amenities" name="amenities">
    </div>
	<div class="mb-3" >
    	<label>기본정보</label>
		<textarea rows="5" cols="100" name="info" id="info"></textarea>
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
    <select id="people">
    	<option>1</option>
    	<option>2</option>
    	<option>3</option>
    	<option>4</option>
    </select>
    </div>
    <div style="margin-bottom: 30px;">
    	<label>객실 수</label>
    	<input type="text">
    </div>
    
    <div style="margin-bottom: 30px;">
    	<label>객실 사진</label>
    	<input type="file" multiple="multiple" id = "multi-inputImg">
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
</script>
</body>
</html>