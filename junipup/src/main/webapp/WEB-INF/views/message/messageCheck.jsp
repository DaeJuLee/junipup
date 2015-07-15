<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr colspan="4"><th>보낸메세지함</th></tr>
		<c:forEach items="${sendMessage }" var="sendCheck">
			<tr class="notice">
				<td>보낸사람 : ${sendCheck.nickname }</td>
				<td>받는사람 : ${sendCheck.receiver }</td>
				<td>제목 : ${sendCheck.title }</td>
				<td>내용 : ${sendCheck.message }</td>		
			</tr>
		</c:forEach>
	</table>
	<table>
		<tr colspan="4"><th>받은메세지함</th></tr>
		<c:forEach items="${receiveMessage }" var="receiveCheck">
			<tr class="notice">
				<td>보낸사람 : ${receiveCheck.nickname }</td>
				<td>받는사람 : ${receiveCheck.receiver }</td>
				<td>제목 : ${receiveCheck.title }</td>
				<td>내용 : ${receiveCheck.message }</td>		
			</tr>
		</c:forEach>
	</table>
</body>
</html>