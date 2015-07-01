<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="JQueryInsertForm.do">글쓰기</a>
<c:set var="num" value="${pg.total - pg.start +1}" />
<h2>목록</h2>
<table>
	<tr>
		<th>글번호</th>
		<th>닉네임</th>
		<th>제목</th>
		<th>등급</th>
		<th>날짜</th>
		<th>내용</th>
		<th>아이피</th>
		<th>힛</th>
		<th>파일 사이즈</th>
		<th>파일 이름</th>
		<th>카테고리</th>
	</tr>
	<c:forEach var="JQuery" items="${JQueryMain }">
		<tr>
			<td><a href="JQueryDetail.do?bnum=${JQuery.bnum }">
					${JQuery.bnum }</a></td>
			<td>${JQuery.nickname }</td>
			<td>${JQuery.title }</td>
			<td>${JQuery.mrank }</td>
			<td>${JQuery.b_date }</td>
			<td>${JQuery.content }</td>
			<td>${JQuery.ip }</td>
			<td>${JQuery.hits }</td>
			<td>${JQuery.filesize }</td>
			<td>${JQuery.filename }</td>
			<td>${JQuery.category}</td>
		</tr>
		<c:set var="num" value="${num-1 }" />
	</c:forEach>
</table>
<c:if test="${pg.startPage > pg.pageBlock}">
		<a href="JQueryMain.do?currentPage=${pg.startPage-pg.pageBlock }">[이전]</a>
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }"
		step="1">
		<a href="JQueryMain.do?currentPage=${pg }">[${pg }]</a>
	</c:forEach>

	<c:if test="${pg.endPage < pg.totalPage }">
		<a href="JQueryMain.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
	</c:if>

</body>
</html>