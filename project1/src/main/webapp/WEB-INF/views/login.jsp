<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="./css/login.css">
<link rel="shortcut icon" href="./image/favicon2.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<script type="text/javascript">

//스크립트 영역
let text = "<p>올바른 아이디를 입력하세요.</p>"	// 전역변수
// 호이스팅이 뭐예요? let vs var?
		
function checkID() {
	//alert("!");
	msg.innerHTML += "<p>" + document.getElementById("id").value + "아이디를 변경했습니다.</p>"
}

function check(){
	// alert("!");	
	let msg = document.getElementById("msg");
	let id = document.getElementById("id");
	
	if(id.value.length <= 4){
		alert("아이디는 4글자 이상이어야 합니다.");
		msg.innerHTML = text;
		id.focus();
		return false;
	}
	
	let pw = document.getElementById("pw");
	if(pw.value.length <= 4){
		alert("암호는 4글자 이상이어야 합니다.");
		pw.focus();
		return false;
	}
	
}
</script>
</head>
<body>
<%@ include file = "menu.jsp" %>

	<div class="loginBox">
		<h1>로그인</h1>
		
		<form action="./login" method="post" onsubmit="return check()">
			<div class = "IDbox">
				<input type="text" name="ID" id="id" placeholder="아이디" 
				required="required" maxlength="10" onchange="checkID()">	
			</div>	
			<div class = "PWbox">
				<input type="password" name="PW" id="pw" placeholder="패스워드" 
				required="required" maxlength="15">
			</div>
	
			<div class = "butbox">
				<button class ="loginbtn" type="submit">log-in</button>
			</div>
			<span id="msg"></span>
		</form>
		
		<div class="IDPWbox">
			<a>아이디 찾기</a> |
			<a>비밀번호 찾기</a>
		</div>
		<div class="joinBox">
			<a href="./join" class="join">회원가입</a>
		</div>
	</div>
	
</body>
</html>