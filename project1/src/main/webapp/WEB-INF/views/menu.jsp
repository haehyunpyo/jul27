<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   
<link rel="stylesheet" href="./css/menu.css">
<link rel="shortcut icon" href="./image/favicon2.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">

	<nav>
		<ul>
			<li onclick="link('')">
				<img class="mimg" src="./img/main.png" alt="집">메인</li>
			<li onclick="link('board')">
				<img class="bimg" src="./img/board.png">게시판</li>
			<li onclick="link('board2')">
				<img class="bimg" src="./img/board.png">게시판2</li>
			<li onclick="link('mooni')">
				<img class="qimg" src="./img/ask.png">문의사항</li>
			<li onclick="link('notice')">
				<img class="nimg" src="./img/notice.png">공지</li>
			<li onclick="link('members')">회원리스트</li>
			
			<c:choose>
				<c:when test="${sessionScope.mname eq null}">
					<li class="login" onclick="link('login')">
						<img class="limg" src="./img/lock.png"></li>
				</c:when>
				<c:otherwise>
					<li class="greet">${sessionScope.mname } & ${sessionScope.mid } 님 반갑습니다.</li>
					<li class="logout" onclick="link('logout')">
						<img class="limg" src="./img/unlock.png"></li>
					</li>
				</c:otherwise>
			</c:choose>
			
		</ul>
	</nav>
	
	<div style="height: 50px; width: 100%">	</div>
	<script>
	function link(url){
		location.href="./"+url
	}
	</script>
	
	
	
	
	