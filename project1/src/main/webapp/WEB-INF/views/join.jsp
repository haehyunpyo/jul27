<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<link rel="stylesheet" href="./css/join.css">
</head>
<body>
<%@ include file = "menu.jsp" %>
	<h1>회원가입</h1>
	
	<div class="joinBox">
		<form action="./join" method="post" onsubmit="return check()">
		
			<div class = "IDbox">
				<div>아이디</div> 
				<input type="text" name="id" placeholder="사용하실 아이디를 입력하세요" 
					required="required" maxlength="10" onchange="checkID()"> 
			</div>
			<div class = "PWbox">
				<div>비밀번호</div>  
				<input type="text" name="pw1" placeholder="사용하실 패스워드를 입력하세요" 
					required="required" maxlength="15"><br>
				<div>비밀번호 확인</div> 
				<input type="text" name="pw2" placeholder="패스워드 확인" 
					required="required" maxlength="15">
			</div>
			<div>이름 <input type="text" name="name" required="required"> </div>
			<div>주소 <input type="text" name="addr" ></div>
			<div>MBTI <input type="text" name="mbti" required="required"></div>
			<div>생년월일 <input type="text" name="birth" ></div>
			<div>
				<select id="select_value">
					<option>ESTP</option>
					<option>ESTJ</option>
					<option>ESFP</option>
					<option>ESFJ</option>
					<option>ENFP</option>
					<option>ENFJ</option>
					<option>ENTP</option>
					<option>ENTJ</option>
					<option>ISTP</option>
					<option>ISTJ</option>
					<option>ISFP</option>
					<option>ISFJ</option>
					<option>INFP</option>
					<option>INFJ</option>
					<option>INTP</option>
					<option>INTJ</option>
				</select>
			</div>
			<div>성별</div>
			<div>
				<label for="male">남자</label>
	    		<input type="radio" id="mail" checked/>
	    		<label for="female">여자</label>
	    		<input type="radio" id="female" />
			</div>
			<div class="Jbtn"><button type="">가입하기</button></div> 
			<div class="Cbtn"><button type="">취소</button></div>
		
		</form>
	</div>

</body>
</html>