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
		$('.tab1>a').css("color","#ffffff").css("background", "#000000").css("zoom", "1");
	}else if(category == '기초익히기'){
		$('.tab2>a').css("color","#ffffff").css("background", "#000000").css("zoom", "1");
	}else if(category == '등급올리기'){
		$('.tab3>a').css("color","#ffffff").css("background", "#000000").css("zoom", "1");
	}else if(category == '질문게시판'){
		$('.tab4>a').css("color","#ffffff").css("background", "#000000").css("zoom", "1");
	}else if(category == '응용게시판'){
		$('.tab5>a').css("color","#ffffff").css("background", "#000000").css("zoom", "1");
	}
});

function go_pop(receiver, sender) {
	var nikk = '${USER_KEY.nickname}';

		window.open(
						"jspPop.do?receiver="+receiver+"&sender="+sender,
						"new",
						"width=370, height=360, resizable=no, scrollbars=no, status=no, location=no, directories=no; left=450; top=250"+
						"background='yellow'");
	}
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
<div class="tab_list " align="center">
    <ul class="tabs">
    <li class="tab1"><a href="DBMain.do"><span>전체게시판</span></a>
        <ul>
        <li class="more">› <a href="#">전체게시판 더보기</a></li>
        </ul>
    </li>
    <li class="tab2"><a href="DBMain.do?category=기초익히기"><span>기초익히기</span></a>
        <ul>
        <li class="more">› <a href="#">기초익히기 더보기</a></li>
        </ul>
    </li>

    <li class="tab3"><a href="DBMain.do?category=등급올리기"><span>등급올리기</span></a>
        <ul>
        <li class="more">› <a href="#">등급올리기 더보기</a></li>
        </ul>
    </li>

    <li class="tab4"><a href="DBMain.do?category=질문게시판"><span>질문게시판</span></a>
        <ul>       
        <li class="more">› <a href="#">질문게시판 더보기</a></li>
        </ul>
    </li>
    
    <li class="tab5"><a href="DBMain.do?category=응용게시판"><span>응용게시판</span></a>
        <ul>       
        <li class="more">› <a href="#">응용게시판 더보기</a></li>
        </ul>
    </li>
    	<c:choose>
			<c:when test="${empty USER_KEY}">					
				<button type="button" class="button"  onclick="location.href='login.do'">글쓰기</button>					
			</c:when>				
			<c:otherwise>					
				<button type="button" onclick="location.href='DBInsertForm.do'" class="button">글쓰기</button>										
			</c:otherwise>
		</c:choose>   
    </ul>
    
</div>	
	<div class="tab_content">
	<c:set var="num" value="${pg.total - pg.start +1}" />
	
	<table class="tbl" align="center">
		<tr height="40px">
			<th width="10%" >번호</th>
			<th width="10%" >카테고리</th>
			<th width="15%" >닉네임</th>
			<th width="50%" >제목</th>
			<th width="15">작성일</th>
			<th width="5%">조회수</th>
		</tr>
		
	<c:set var="noticenum" value="4" />	
	<c:forEach items="${noticeRecent }" var="notice">
		<tr class="notice">
		<td>${noticenum }</td>
		<td>${notice.category }</td>
		<td>${notice.nickname }</td>		
		<td><a href="noticeDetail.do?bnum=${notice.bnum }">${notice.title }</a></td>
		<td>${notice.b_date }</td>
		<td>${notice.hits }</td>
		</tr>
	<c:set var="noticenum" value="${noticenum-1 }" />	
	</c:forEach>
	
	<c:forEach items="${list }" var="db">
		<tr>
			<td>${num }</td>
			<td>${db.category }</td> <!-- 눈에 띄게 !!!@#!@#!@#!@# -->
			<!-- onclick="toggle(document.all.hideshow)" -->
			<td><input type="button" value="${db.nickname }" onclick="go_pop('${db.nickname}','${USER_KEY.nickname}')" class="button"></td>
			<%-- <td><button class="more" value="${db.nickname }">${db.nickname }</button></td> --%>
			<%-- <td><button class="more" value="${db.nickname }" onclick="toggle(document.all.hideshow)">${db.nickname }</button></td> --%>
			<!-- onclick="toggle(document.all.hideshow)" -->
			<td><a href="DBDetail.do?bnum=${db.bnum}">${db.title }</a></td>
			<td>${db.b_date }</td>
			<td>${db.hits }</td>
		</tr>
		<c:set var="num" value="${num-1 }" />
	</c:forEach>
	</table>
	</div >
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
	<!-- left:369px; top:227px; -->
 	<div class="hideshow" id="hideshow"
	style="visibility:hidden; position:absolute;  width:157px; height:74px; z-index:1;">
	<table height="100" width="200" border="1" cellspacing="1" bgcolor="cccccc">
		<tr><td>닉네임</td><td id="nickName"></td><td>닉네임</td></tr>
	</table>
	</div>
<script type="text/javascript">

$(function () {
	$(".more").click(function(e) {
		var y = e.clientY;
		var x = e.clientX;
		
		/* var y = event.y;
		var x = event.x; */
		
		var hideshow = $(".hideshow");
		hideshow.css("top", y);
		hideshow.css("left", x);
		hideshow.css("visibility","visible");
		
		var nickname1 = $(this).val();
		$.ajax({
			url:"findMember.do",
			type: "POST",
			dataType: "json",
			data: {
				"nickname" : nickname1
			},
		    success : function(data1){
		    	$("#hideshow").find("#nickName").html(data1.nickname);
		    },
			error:function(request, status, error){
				alert("code:"+ request.status + "\n" + "error:"+error);
			}
		});
	});
});

/* $(".more").click(function(){
	var nickname1 = $(this).val();
	$.ajax({
		url:"findMember.do",
		type: "POST",
		dataType: "json",
		data: {
			"nickname" : "master"
		},
	    success : function(data1){
	    	$("#hideshow").find("#nickName").html(data1.nickname);
			toggle(document.all.hideshow);
	    },
		error:function(request, status, error){
			alert("code:"+ request.status + "\n" + "error:"+error);
		}
	});
}); */

/* $(".hideshow").toggle().css('visibility', 'visible'); */

/* function toggle(e){
	
	
 	if(e.style.visibility == "hidden"){
		e.style.top = event.y;
		
		e.style.left = event.x;
		e.style.visibility = "visible";
	}
	else{
		e.style.visibility = "hidden";
	}
} */
/* 되는거 주석 */
/* $(".more").click(function(){
	var nickname1 = $(this).val();
	alert("1");
	$.ajax({
		url:"findMember.do",
		type: "POST",
		dataType: "json",
		data: {
			"nickname" : nickname1
		},
	    success : function(data){
	    	alert("성공");
	    	alert(data.nickname);
	    	alert(data.mrank);
	    	alert(data.maxPoint);
	    	$('.hideshow').toggle(500).css("visibility", "visible");
	    },
		error:function(request, status, error){
			alert("code:"+ request.status + "\n" + "error:"+error);
		}
	});
}); */

</script>
</body>
</html>