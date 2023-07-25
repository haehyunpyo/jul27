<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   
<link rel="stylesheet" href="./css/menu.css">

	<nav>
		<ul>
			<li onclick="link('')">
				<img class="mimg" src="./img/main.png" alt="집">메인</li>
			<li onclick="link('board')">
				<img class="bimg" src="./img/board.png">게시판</li>
			<li onclick="link('board2')">
				<img class="bimg" src="./img/board.png">게시판2</li>
			<li onclick="link('mooni')">
				<img class="qimg" src="./img/ask.png">문의사항<img class="qimg" src="./img/ask.png"></li>
			<li onclick="link('notice')">
				<img class="nimg" src="./img/notice.png">공지</li>
			
			<c:choose>
				<c:when test="${sessionScope.mname eq null}">
					<li onclick="link('login')">로그인
						<img class="limg" src="./img/login.png"></li>
				</c:when>
				<c:otherwise>
					<li class="greet">${sessionScope.mname } & ${sessionScope.mid } 님 반갑습니다.</li>
					<li class="logout" onclick="link('logout')">로그아웃</li>
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
	
	
	
	
	