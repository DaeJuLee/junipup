<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="simpleBanner.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/pagination.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="simpleBanner.js"></script>
<script src="script.js"></script>
</head>
<body>
<body> 
<p> 
<c:set var="num" value="${pg.total - pg.start +1}" />
	<table class="tbl" align="center">
		<tr height="40px">
			<th width="15%" >번호</th>
			<th width="15%" >카테고리</th>
			<th width="15%" >닉네임</th>
			<th width="55%" >제목</th>
		</tr>	
	
	<button type="button" onclick="location.href='html5InsertForm.do'" class="button">글쓰기</button>
	
		<c:forEach items="${html5Main }" var="html5">
			<tr>
				<td>${num }</td>
				<td>${html5.category }</td>
				<td>${html5.nickname }</td>
				<td><a href="html5Detail.do?bnum=${html5.bnum}">${html5.title }</a></td>
			</tr>
			<c:set var="num" value="${num-1 }" />
		</c:forEach>
	</table>
	<button type="button" onclick="location.href='html5InsertForm.do'" class="button">글쓰기</button>
	
	<div class="paginate">
	<c:if test="${pg.startPage > pg.pageBlock}">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage-pg.pageBlock }" class="pre">이전</a> --%>
		<button type="button" class="button" onclick="location.href='html5Main.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
		<a href="html5Main.do?currentPage=${pg }"><span>${pg}</span></a>
	</c:forEach>

	<c:if test="${pg.endPage < pg.totalPage }">
		<a href="html5Main.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
	</c:if>	

	</div>
</body>
</html>
