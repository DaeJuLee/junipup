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
<a href="html5InsertForm.do">글쓰기</a>
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
	<c:forEach var="Html5" items="${html5Main }">
		<tr>
			<td><a href="html5Detail.do?bnum=${Html5.bnum }">
					${Html5.bnum }</a></td>
			<td>${Html5.nickname }</td>
			<td>${Html5.title }</td>
			<td>${Html5.mrank }</td>
			<td>${Html5.b_date }</td>
			<td>${Html5.content }</td>
			<td>${Html5.ip }</td>
			<td>${Html5.hits }</td>
			<td>${Html5.filesize }</td>
			<td>${Html5.filename }</td>
			<td>${Html5.category}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>