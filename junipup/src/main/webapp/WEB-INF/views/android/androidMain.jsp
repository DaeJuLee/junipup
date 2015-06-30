<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/pagination.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="num" value="${pg.total - pg.start +1}" />
	<table class="tbl" align="center">
		<tr height="40px">
			<th width="15%" >번호</th>
			<th width="15%" >카테고리</th>
			<th width="15%" >닉네임</th>
			<th width="55%" >제목</th>
		</tr>
		<c:forEach items="${list }" var="android">
			<tr>
				<td>${num }</td>
				<td>${android.category }</td>
				<td>${android.nickname }</td>
				<td><a href="androidDetail.do?title=${android.title}">${android.title }</a></td>
			</tr>
			<c:set var="num" value="${num-1 }" />
		</c:forEach>
	</table>
	<button type="button" onclick="location.href='androidInsertForm.do?android=${androidInsertForm}'" class="button">글쓰기</button>
	<c:if test="${pg.startPage > pg.pageBlock}">
		<%-- <a href="androidMain.do?currentPage=${pg.startPage-pg.pageBlock }">[이전]</a> --%>
		<button type="button" class="button" onclick="location.href='androidMain.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
		
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
		<a href="androidMain.do?currentPage=${pg }"><span>${pg}</span></a>
	</c:forEach>

	<c:if test="${pg.endPage < pg.totalPage }">
		<%-- <a href="androidMain.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a> --%>
		<button type="button" class="button" onclick="location.href='androidMain.do?currentPage=${pg.startPage+pg.pageBlock}'">다음</button>
		
	</c:if>

</body>
</html>