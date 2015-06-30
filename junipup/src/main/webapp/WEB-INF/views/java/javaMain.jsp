<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
.board_list { width:70%; margin:5px 0 0 0; border-bottom:1px solid #000;}
.board_list th { font-weight:bold; font-size:12px; } 
.board_list th { border-top:2px solid #000; border-bottom:1px solid #000; height:30px; } 
.board_list th { white-space:nowrap; height:34px; overflow:hidden; text-align:center; } 

.board_list tr.bg0 { background-color:#fff; } 
.board_list tr.bg1 { background-color:#ffffff; } 

.board_list td { padding:.5em; }
.board_list td { border-top:1px dotted #d6d6d6; } 
.board_list td.num { color:#999999; text-align:center; }
.board_list td.checkbox { text-align:center; }
.board_list td.subject { overflow:hidden; }
.board_list td.name { text-align:center; }

.board_list td, .board_list td a { color:#5d5d5d; font-family:dotum; font-size:12px; }

.board_list td.datetime { font:normal 11px verdana; color:#5d5d5d; text-align:center; }
.board_list td.hit { font:normal 11px verdana; color:#5d5d5d; text-align:center; }
.board_list td.good { font:normal 11px verdana; color:#5d5d5d; text-align:center; }
.board_list td.nogood { font:normal 11px verdana; color:#5d5d5d; text-align:center; }

.board_list .notice { font-weight:normal; }
.board_list .current { font:bold 11px verdana; color:#5d5d5d; }
.board_list .comment { font-family:verdana; font-size:10px; color:#5d5d5d; }

.board_button { clear:both; margin:10px 0 0 0; }

.board_page { clear:both; text-align:center; font-family:verdana; margin:3px 0 0 0; }
.board_page a{ font-family:verdana; color:#999; }
.board_page a:link { font-family:verdana; color:#999; }
.board_page b { font-family:verdana; padding:1px 3px 3px 3px; text-decoration:none; background:#000; color:#fff; width:18px; height:16px; font-weight:bold;}

.board_search { text-align:center; margin:10px 0 0 0; }
.board_search .stx { height:15px; border:1px solid #b3b0aa; }
.img {width:50px ;height:50px; }
</style>
</head>
<body>
<div class="img">
<a href = "javaInsertForm.do"><img alt="" src="img/btn_write.gif"></a>
</div>
<c:set var="num" value="${pg.total - pg.start +1}" />	
	<table class="board_list" align="center">
		<tr>
			<th>번호</th>
			<th>카테고리</th>
			<th>닉네임</th>
			<th>제목</th>
		</tr>
		<c:forEach items="${list }" var="java">
			<tr>
				<td>${num }</td>
				<td>${java.category }</td>
				<td>${java.nickname }</td>
				<td><a href="javaDetail.do?title=${java.title}">${java.title }</a></td>
			</tr>
			<c:set var="num" value="${num-1 }" />
		</c:forEach>
	</table>
	
	<div class="board_button">
	<c:if test="${pg.startPage > pg.pageBlock}">
		<a href="javaMain.do?currentPage=${pg.startPage-pg.pageBlock }"><img alt="" src="img/page_begin.gif" height="10%"></a>
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }"
		step="1">
		<a href="javaMain.do?currentPage=${pg }"><span cl>[${pg }]</span></a>
	</c:forEach>

	<c:if test="${pg.endPage < pg.totalPage }">
		<a href="javaMain.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
	</c:if>
	</div>
</body>
</html>