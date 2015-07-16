<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/pagination.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/tab.css">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty USER_KEY}">					
			<button type="button" class="button"  onclick="location.href='login.do'">글쓰기</button>					
		</c:when>				
		<c:otherwise>
			<c:choose>							
				<c:when test="${USER_KEY.nickname == 'master' }">
					<button type="button" onclick="location.href='noticeInsertForm.do'" class="button">글쓰기</button>									
				</c:when>
				<c:when test="${USER_KEY.nickname != 'master' }">
				</c:when>
					
			</c:choose>							
		</c:otherwise>		
	</c:choose>
	
	<div class="tab_content">
	<c:set var="num" value="${pg.total - pg.start +1}" />
	<table class="tbl" align="center">
		<tr height="40px">
			<th width="10%" >번호</th>
			<th width="10%" >카테고리</th>
			<th width="15%" >닉네임</th>
			<th width="50%" >제목</th>
			<th width="15">작성일</th>
		</tr>
	<c:forEach items="${list }" var="notice">
		<tr>
			<td>${num }</td>
			<td>${notice.category }</td> 
			<td><a href="findMember.do?nickname=${notice.nickname}">${notice.nickname }</a></td>
			<td><a href="noticeDetail.do?bnum=${notice.bnum}">${notice.title }</a></td>
		</tr>
		<c:set var="num" value="${num-1 }" />
	</c:forEach>
	</table>
	</div >
	<div class="paginate">
	<c:if test="${pg.startPage > pg.pageBlock}">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage-pg.pageBlock }" class="pre">이전</a> --%>
		<button type="button" class="button" onclick="location.href='noticeMain.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
		<a href="noticeMain.do?currentPage=${pg }"><span>${pg}</span></a>
	</c:forEach>
	
	<c:if test="${pg.endPage < pg.totalPage }">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage+pg.pageBlock}" class="next"><img src="http://static.naver.com/common/paginate/btn_page_next.gif" width="57" height="27" alt="다음"></a> --%>
		<button type="button" class="button" onclick="location.href='noticeMain.do?currentPage=${pg.startPage+pg.pageBlock}'">다음</button>
	</c:if>
	</div>
</body><%@ include file="../footer.jsp" %>
</html>