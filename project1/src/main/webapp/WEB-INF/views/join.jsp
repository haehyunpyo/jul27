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
		$("#idCheck").click(function() {
			let id = $("#id").val();
			//console.log(id);
			//console.log(id.length);
			if(id=="" || id.length < 5){
				$("#resultMSG").text("아이디는 다섯글자 이상이어야 합니다.");
				$("#resultMSG").css("color", "red").css("font-weight", "bold").css("font-size", "10pt");
			} else {
				$.ajax({ // ajax 시작
					url : "./checkID",
					type : "post",
					data : {"id": id},
					dataType : "json", // {result : 0}
					success : function(data){
						// alert(data.result);
						if(data.result == 1){
							$("#id").css("background-color", "red").focus();
							$("#resultMSG").css("color", "red").text("이미 등록된 아이디입니다.");
						} else {
							$("#id").css("background-color", "white");
							$("#resultMSG").css("color", "green").text("가입할 수 있습니다.");
						}
						//$("#resultMSG").text("성공시 결과값 : " + data);
					},
					error : function(request, status, error){
						$("#resultMSG").text("오류가 발생했습니다. 가입할 수 없습니다. ");
					}
				});	// ajax 끝
			}
			return false;	// 멈추기
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
				<button id="idCheck">중복검사</button>
			</div>
			<span id="resultMSG">중복검사메세지</span>
			
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