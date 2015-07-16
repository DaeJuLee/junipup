<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="insertEmp.do">직원 정보 입력</a>
	<c:set var="num" value="${pg.total - pg.start }" />
	<table>
		<tr>
			<th>번호</th>
			<th>사번</th>
			<th>이름</th>
			<th>업무</th>
			<th>급여</th>
		</tr>
		<c:forEach items="${list }" var="emp">
			<tr>
				<td>${num }</td>
				<td>${emp.empno }</td>
				<td><a href="detail.do?empno=${emp.empno }">${emp.ename }</a></td>
				<td>${emp.job }</td>
				<td>${emp.sal }</td>
			</tr>
			<c:set var="num" value="${num-1 }" />
		</c:forEach>
	</table>

	<c:if test="${pg.startPage > pg.pageBlock}">
		<a href="list.do?currentPage=${pg.startPage-pg.pageBlock }">[이전]</a>
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }"
		step="1">
		<a href="list.do?currentPage=${pg }">[${pg }]</a>
	</c:forEach>

	<c:if test="${pg.endPage < pg.totalPage }">
		<a href="list.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
	</c:if>
</body>
<%@ include file="footer.jsp" %>
</html>