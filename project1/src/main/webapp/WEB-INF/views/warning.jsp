<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.warnBox{
		margin: 0;
		width: 500px;
		height: 300px;
		text-align: center;
		position: absolute;
	}	
	h1{
		color: white;
		text-align: center;
	}
</style>
</head>

<body background="../img/warning.jpg">
	<div class="warnBox">
		<h1>그러시면 안됩니다.</h1>
		<h2><button onclick="location.href='./board'">게시판으로 이동하기</button></h2>
	</div>
</body>
</html>