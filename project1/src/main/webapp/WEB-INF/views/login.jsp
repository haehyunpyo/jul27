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
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
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

// Jquery
$(function () {
   $(".loginbtn").click(function (){
      
   let id = $('#id').val();
   let pw = $('#pw').val();
   
   if(id.length < 5){
      alert("아이디를 입력하세요.");
      $("#id").focus();
   }
   if(pw.length < 5){
      alert("암호를 입력하세요.");
      $("#pw").focus();
      
   } else {
      // 아이디하고 암호하고 정확하게 입력되었습니다.
      let form = $("<form></form>");
        form.attr("method", "post");
        form.attr("action", "./login");
        
        form.append($("<input/>", {
            type:'hidden', 
            name:'ID', 
            value:id
        }));
        form.append($("<input/>", {
            type:'hidden', 
            name:'PW', 
            value:pw
        }));
        
        form.appendTo("body");
        form.submit();
   }
   });
});

</script>
</head>
<body>
<%@ include file = "menu.jsp" %>

	<div class="loginBox">
		<h1>로그인</h1>
		
		<form action="./login" method="post" onsubmit="return check()"></form>
		
			<div class = "IDbox">
				<input type="text" name="ID" id="id" placeholder="아이디" 
				required="required" maxlength="10">	
			</div>	
			<div class = "PWbox">
				<input type="password" name="PW" id="pw" placeholder="패스워드" 
				required="required" maxlength="15">
			</div>
	
			<div class = "butbox">
				<button class ="loginbtn" type="submit">log-in</button>
			</div>
			<span id="msg"></span>
		
		
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