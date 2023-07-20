<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="./css/login.css">
</head>
<body>
<%@ include file = "menu.jsp" %>

	<div class="loginBox">
		<h1>로그인</h1>
		<div class = "IDbox">
			<input type="text" name="ID" placeholder="아이디">	
		</div>	
		<div class = "PWbox">
			<input type="password" name="PW" placeholder="패스워드">
		<div class = "butbox">
			<button class ="loginbtn" type="submit">log-in</button>
		</div>
	</div>
	
</body>
</html>