<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../mainHeader2.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/pagination.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="tbl" align="center">
		<tr colspan="4"><th>보낸메세지함</th></tr>
		<tr class="notice">
				<td>보낸사람  </td>
				<td>받는사람  </td>
				<td>제목  </td>
				<td>내용 </td>		
		</tr>
		<c:forEach items="${sendMessage }" var="sendCheck">
			
			<tr>
				<td>${sendCheck.nickname }</td>
				<td>${sendCheck.receiver }</td>
				<td>${sendCheck.title }</td>
				<td> ${sendCheck.message }</td>
			</tr>	
		</c:forEach>		
	</table>
	
	<div class="paginate">
		<c:if test="${pg.startPage > pg.pageBlock}">		
				<%-- <a href="DBMain.do?currentPage=${pg.startPage-pg.pageBlock }" class="pre">이전</a> --%>
				<button type="button" class="button" onclick="location.href='messageCheckMain.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
		</c:if>
		
		<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
			<a href="messageCheckMain.do?currentPage=${pg }"><span>${pg}</span></a>
		</c:forEach>
		
		<c:if test="${pg.endPage < pg.totalPage }">
			<a href="messageCheckMain.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
		</c:if>	
	</div>
		
	<table class="tbl" align="center">	
		<tr colspan="4"><th>받은메세지함</th></tr>
			<tr class="notice">
				<td>보낸사람  </td>
				<td>받는사람  </td>
				<td>제목  </td>
				<td>내용 </td>		
			</tr>
		<c:forEach items="${receiveMessage }" var="receiveCheck">	
			<tr>
				<td> ${receiveCheck.nickname }</td>
				<td>${receiveCheck.receiver }</td>
				<td> ${receiveCheck.title }</td>
				<td> ${receiveCheck.message }</td>
			</tr>	
		</c:forEach>
	</table>
	
	<div class="paginate">
		<c:if test="${pg.startPage > pg.pageBlock}">		
				<%-- <a href="DBMain.do?currentPage=${pg.startPage-pg.pageBlock }" class="pre">이전</a> --%>
				<button type="button" class="button" onclick="location.href='messageCheckMain.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
		</c:if>
		
		<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
			<a href="messageCheckMain.do?currentPage=${pg }"><span>${pg}</span></a>
		</c:forEach>
		
		<c:if test="${pg.endPage < pg.totalPage }">
			<a href="messageCheck.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
		</c:if>	
	</div>
	
</body>
</html>