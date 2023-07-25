<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 Get</title>

<link rel="stylesheet" href="./css/write.css">
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<script type="text/javascript">

	function check(){
		
		let title = document.getElementById("title");
		let content = document.getElementById("summernote")
		
		if(title.value.length <= 2){
		alert("제목은 2글자 이상이어야 합니다.");
		title.focus();
		return false;
		}
		
		if(content.value.length <= 15){
			alert("내용을 채워주세요.");
			title.focus();
			return false;
		}
		
	}
</script>

</head>
<body>
<%@ include file = "menu.jsp" %>
	<h1>글쓰기</h1>
	<div class="write-div">
		<form action="./write" method="post" onsubmit="return check()">
			<input type="text" name="title" id="title">
			<textarea id="summernote" name="content"></textarea>
			<div class="btn2Box"> 
				<button class="btn2" name="btn2" type="submit">글쓰기</button>
			</div>
		</form>
		<!-- 	type="submit" => 제출버튼, 폼데이터로 데이터 전송-->
	</div>
	
	<script type="text/javascript">
	/* JQuery문법 : 문서가 모두 로딩되었다면, 익명함수를 실행하세요 */
	/* textarea에 서머노트를 실행해주세요 */
		$(document).ready(function() {
		  $('#summernote').summernote({
			  height: 400
		  });
		});
	</script>
	
</body>
</html>








