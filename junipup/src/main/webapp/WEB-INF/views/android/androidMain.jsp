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
	var category = $('#category').val();
	if(category == 'null'){
		$('.tab1>a').css("color","green").css("background", "#aaa").css("zoom", "1");
	}else if(category == '기초익히기'){
		$('.tab2>a').css("color","green").css("background", "#aaa").css("zoom", "1");
	}else if(category == '등급올리기'){
		$('.tab3>a').css("color","green").css("background", "#aaa").css("zoom", "1");
	}else if(category == '질문게시판'){
		$('.tab4>a').css("color","green").css("background", "#aaa").css("zoom", "1");
	}else if(category == '응용게시판'){
		$('.tab5>a').css("color","green").css("background", "#aaa").css("zoom", "1");
	}
});
</script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
<c:if test="${all == 'true' }">
	<input type="hidden" name="category" id="category" value="null">
</c:if>
<c:if test="${all != 'true'}">
	<input type="hidden" name="category" id="category" value="${category }">
</c:if>
<p> 

<div class="tab_list m1" align="center">
    <ul class="tabs">
    <li class="tab1"><a href="androidMain.do"><span>전체게시판</span></a>
        <ul>
        <li class="more">› <a href="#">전체게시판 더보기</a></li>
        </ul>
    </li>
    <li class="tab2"><a href="androidMain.do?category=기초익히기"><span>기초익히기</span></a>
        <ul>
        <li class="more">› <a href="#">기초익히기 더보기</a></li>
        </ul>
    </li>

    <li class="tab3"><a href="androidMain.do?category=등급올리기"><span>등급올리기</span></a>
        <ul>
        <li class="more">› <a href="#">등급올리기 더보기</a></li>
        </ul>
    </li>

    <li class="tab4"><a href="androidMain.do?category=질문게시판"><span>질문게시판</span></a>
        <ul>       
        <li class="more">› <a href="#">질문게시판 더보기</a></li>
        </ul>
    </li>
    
    <li class="tab5"><a href="androidMain.do?category=응용게시판"><span>응용게시판</span></a>
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
		<c:forEach items="${list }" var="android">
			<tr>
				<td>${num }</td>
				<td>${android.category }</td>
				<td>${android.nickname }</td>
				<td><a href="androidDetail.do?bnum=${android.bnum}">${android.title }</a></td>
			</tr>
			<c:set var="num" value="${num-1 }" />
		</c:forEach>
	</table>
	<button type="button" onclick="location.href='androidInsertForm.do'" class="button">글쓰기</button>
	
	<div class="paginate">
	<c:if test="${pg.startPage > pg.pageBlock}">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage-pg.pageBlock }" class="pre">이전</a> --%>
		<button type="button" class="button" onclick="location.href='androidMain.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
		<a href="androidMain.do?currentPage=${pg }"><span>${pg}</span></a>
	</c:forEach>
	
	<c:if test="${pg.endPage < pg.totalPage }">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage+pg.pageBlock}" class="next"><img src="http://static.naver.com/common/paginate/btn_page_next.gif" width="57" height="27" alt="다음"></a> --%>
		<button type="button" class="button" onclick="location.href='androidMain.do?currentPage=${pg.startPage+pg.pageBlock}'">다음</button>
	</c:if>
	</div>
</body>
</html>