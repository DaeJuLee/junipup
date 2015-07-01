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
<c:set var="num" value="${pg.total - pg.start +1}" />
<h2>목록</h2>
<table>
	<tr>
		<th>닉네임</th>
		<th>사진</th>
		<th>아이디</th>
		<th>암호</th>
		<th>이름</th>
		<th>연락처</th>
		<th>이메일</th>
		<th>등급</th>
		<th>사용포인트</th>
		<th>최대포인트</th>
		<th>날짜</th>
		<th>출석도장</th>
	</tr>
	<c:forEach var="admin" items="${adminMain }">
		<tr>
			<%-- <td><a href="adminDetail.do?bnum=${admin.bnum }">
					${JQuery.bnum }</a></td> --%>
			<td>${admin.nickname }</td>
			<td>${admin.photo }</td>
			<td>${admin.id }</td>
			<td>${admin.password }</td>
			<td>${admin.name }</td>
			<td>${admin.phoneNumber }</td>
			<td>${admin.email }</td>
			<td>${admin.mrank }</td>
			<td>${admin.usePoint }</td>
			<td>${admin.maxPoint }</td>
			<td>${admin.regDate}</td>
			<td>${admin.loginDate}</td>

		</tr>
		<c:set var="num" value="${num-1 }" /> 
	</c:forEach>
</table>
 <c:if test="${pg.startPage > pg.pageBlock}">
		<a href="adminMain.do?currentPage=${pg.startPage-pg.pageBlock }">[이전]</a>
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }"
		step="1">
		<a href="adminMain.do?currentPage=${pg }">[${pg }]</a>
	</c:forEach>

	<c:if test="${pg.endPage < pg.totalPage }">
		<a href="adminMain.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
	</c:if>

</body>
</html>