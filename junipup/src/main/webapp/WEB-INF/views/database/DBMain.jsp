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
<script type="text/javascript">
jQuery(function($){
    var tab = $('.tab_list');
    tab.removeClass('js_off');
    tab.css('height', tab.find('>ul>li>ul:visible').height()+40);
    function onSelectTab(){
        var t = $(this);
        var myClass = t.parent('li').attr('class');
        t.parents('.tab_list:first').attr('class', 'tab_list '+myClass);
        tab.css('height', t.next('ul').height()+40);
    }
    tab.find('>ul>li>a').click(onSelectTab).focus(onSelectTab);
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
<div class="tab_list m1" align="center">
    <ul style="width:70%">
    <li class="m1"><a href="DBMain.do"><span>전체게시판</span></a>
        <ul>
        <li class="more">› <a href="#">전체게시판 더보기</a></li>
        </ul>
    </li>
    <li class="m2"><a href="DBMain.do?category=기초익히기"><span>기초익히기</span></a>
        <ul>
        <li class="more">› <a href="#">기초익히기 더보기</a></li>
        </ul>
    </li>

    <li class="m3"><a href="#"><span>등급올리기</span></a>
        <ul>
        <li class="more">› <a href="#">등급올리기 더보기</a></li>
        </ul>
    </li>

    <li class="m4"><a href="#"><span>질문게시판</span></a>
        <ul>       
        <li class="more">› <a href="#">질문게시판 더보기</a></li>
        </ul>
    </li>
    
    <li class="m5"><a href="#"><span>응용게시판</span></a>
        <ul>       
        <li class="more">› <a href="#">응용게시판 더보기</a></li>
        </ul>
    </li>
    </ul>
</div>

<c:set var="num" value="${pg.total - pg.start +1}" />
	<table class="tbl" align="center">
		<tr height="40px">
			<th width="15%" >번호</th>
			<th width="15%" >카테고리</th>
			<th width="15%" >닉네임</th>
			<th width="55%" >제목</th>
		</tr>
		<c:forEach items="${list }" var="db">
			<tr>
				<td>${num }</td>
				<td>${db.category }</td>
				<td>${db.nickname }</td>
				<td><a href="DBDetail.do?title=${db.title}">${db.title }</a></td>
			</tr>
			<c:set var="num" value="${num-1 }" />
		</c:forEach>
	</table>
<button type="button" onclick="location.href='DBInsertForm.do'" class="button">글쓰기</button>
	<div class="paginate">
	<c:if test="${pg.startPage > pg.pageBlock}">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage-pg.pageBlock }" class="pre">이전</a> --%>
		<button type="button" class="button" onclick="location.href='DBMain.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
		<a href="DBMain.do?currentPage=${pg }"><span>${pg}</span></a>
	</c:forEach>
	
	<c:if test="${pg.endPage < pg.totalPage }">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage+pg.pageBlock}" class="next"><img src="http://static.naver.com/common/paginate/btn_page_next.gif" width="57" height="27" alt="다음"></a> --%>
		<button type="button" class="button" onclick="location.href='DBMain.do?currentPage=${pg.startPage+pg.pageBlock}'">다음</button>
	</c:if>
	</div>
</body>
</html>