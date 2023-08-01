<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<link rel="stylesheet" href="./css/join.css?version=0.2">
<link rel="shortcut icon" href="./image/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#idCheck").click(function () {
			let id = $("#id").val();
			if(id == "" || id.length < 5) {
				// alert("아이디는 5글자 이상이어야 합니다.");
				$("#resultMSG").text("아이디는 5글자 이상이어야 합니다.");
				$("#resultMSG").css("color", "red");
				$("#id").focus();
				return false;
			} else {
				$.ajax({
					url:"./checkID",
					type: "post",
					data: {"id": id}, // checkID?id = poseidon
					dataType: "html", 
					success: function (data){
						$("#resultMSG").text("data : " + data);
					},
					error: function(request, status, error){
						$("#resultMSG").text("error : " + error);
					}
				});
				
				
				$("#resultMSG").text("5글자 이상으로 들어왔습니다.");
				$("#resultMSG").css("color", "green");
			}
			return false;
		});
	});

</script>

</head>
<body>
<%@ include file = "menu.jsp" %>

	<form action="./join" method="post" >
		<div class="joinBox">
	

		<h1>회원가입</h1>
		
			<div class="idBox">
				<input type="text" name="id" id="id" placeholder="아이디" > 
				<button id="idCheck">중복검사</button><br>
				<div id="resultMSG"></div>
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