<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/detail.css">
</head>

<body>
<%@ include file = "menu.jsp" %>
<h1>상세보기</h1>
	<div class= "detail-content">
		<div class="title">${dto.bno }.  ${dto.btitle }</div>
		<div class="name">${dto.bwrite }</div>
		<div class="content">${dto.bcontent }</div>
		<div class="under-bar">
			<div class="date">${dto.bdate }</div>
			<div class="like">${dto.blike }</div>
		</div>
			<div class="ip">아직없음</div>
	</div>
</body>
</html>