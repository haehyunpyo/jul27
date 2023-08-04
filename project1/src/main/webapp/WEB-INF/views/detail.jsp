<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/detail.css">
<link rel="shortcut icon" href="./image/favicon2.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">

	function edit(){
		if(confirm("수정하시겠습니까?")){
			location.href="./edit?bno=${dto.bno }"			
		}		
	}
	
	function del(){
		let chk = confirm("삭제하시겠습니까?");	// 참 거짓으로 나옵니다.
		// alert(chk);
		if(chk){
			location.href="./delete?bno=${dto.bno }";
		}
	}
	
	$(function () {
		$(".commentBox").hide();
		$("#openComment").click(function () {
			$(".commentBox").show('slow');
			$("#openComment").remove();
		});
	});
	
</script>
</head>

<body>
<%@ include file = "menu.jsp" %>
<h1>상세보기</h1>
	<div class= "detail-content">
		<div class="title">${dto.bno }.  ${dto.btitle } <div class="ip">${dto.bip }</div>
			<c:if test="${sessionScope.mid ne null && sessionScope.mid eq dto.m_id}">
			<div class="upNde">
				<img alt="" src="./img/update.png" onclick="edit()">&nbsp;<img alt="" src="./img/delete.png" onclick="del()">
			</div>	
			</c:if>
		</div>
		<div class="name">${dto.m_name }님</div>
		<div class="content">${dto.bcontent }</div>
		<div class="under-bar">
			<div class="date">${dto.bdate }</div>
			<div class="like">${dto.blike }</div>
		</div>
			<c:choose>
				<c:when test="${fn:length(commentsList) gt 0}">
				<div class="comment">
					<c:forEach items="${commentsList }" var="c">
						<div class="cBox">
							<div class="cName"> ${c.m_name } (${c.m_id })</div>
							<div class="cComment"> ${c.c_comment } 
								<div class="cDate"> ${c.c_date } </div> 
							</div>
						</div>
					</c:forEach>
				</div>
				</c:when>
			</c:choose>
	</div>
	<c:if test="${sessionScope.mid ne null }">
	<div class="cOpenBtn">
		<button type="button" id="openComment">댓글창 열기</button>
	</div>
	<div class="commentBox">
		<form action="./comment" method="post">
			<textarea id="commenttextarea" name="comment"></textarea>
			<button type="submit" id="comment">글쓰기</button>
			<input type="hidden" name="bno" value="${dto.bno }">
		</form>
	</div>
	</c:if>
	
	
</body>
</html>