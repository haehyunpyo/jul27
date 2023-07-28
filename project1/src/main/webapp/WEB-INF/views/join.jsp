<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<link rel="stylesheet" href="./css/join.css">
<link rel="shortcut icon" href="./image/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
<%@ include file = "menu.jsp" %>

	<form action="./join" method="post" >
		<div class="joinBox">
	

		<h1>회원가입</h1>
		
			<div class="idBox">
				<input type="text" name="id" id="id" placeholder="아이디" > 
			</div>
			<div class="pwBox1">
				<input type="text" name="pw1" id="pw1" placeholder="비밀번호" >
			</div>
			<div class="pwBox2">
				<input type="text" name="pw1" id="pw2" placeholder="비밀번호확인" >
			</div>
			<div class="nameBox">
			<input type="text" name="name" id="name" placeholder="이름" >
			</div>
			<div class="addrBox">
			<input type="text" name="addr" id="addr" placeholder="주소" >
			</div>
			
			<div class="selectBox"> 
				<div class="selectText">성별</div>
				<label for="male">남자</label>
	    		<input type="radio" name="gender" id="male" value="1" />
	    		<label for="female">여자</label>
	    		<input type="radio" name="gender" id="female" value="0"/>
			</div>
			
			<div class="birthBox"> 
				<div class="birthText">생년월일</div>
				<input type="date" name="birth" id="birth">
			</div>
			
			<div class="mbtiBox">
				<div class="mbtiText">MBTI</div>
				<select name="mbti" id="mbti">
					<option>선택</option>
					<optgroup label="대문자 E">
						<option value="ESTP">ESTP</option>
						<option value="ESTJ">ESTJ</option>
						<option value="ESFP">ESFP</option>
						<option value="ESFJ">ESFJ</option>
						<option value="ENFP">ENFP</option>
						<option value="ENFJ">ENFJ</option>
						<option value="ENTP">ENTP</option>
						<option value="ENTJ">ENTJ</option>
					</optgroup>
					<optgroup label="대문자 I">
						<option value="ISTJ">ISTJ</option>
						<option value="ISTP">ISTP</option>
						<option value="ISFJ">ISFJ</option>
						<option value="ISFP">ISFP</option>
						<option value="INTJ">INTJ</option>
						<option value="INTP">INTP</option>
						<option value="INFJ">INFJ</option>
						<option value="INFP">INFP</option>
					</optgroup>
				</select>
			</div>
			
			<div class="btnBox1">
				<button type="submit" class="Jbtn">가입하기</button>
			</div>
			<div class="btnBox2">
				<button type="reset" class="Cbtn">취소</button>
			</div>
		
		</div>
	</form>

</body>
</html>