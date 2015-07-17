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

	<table class="tbl" align="center">
		<tr height="40px">
			<th width="10%" >보낸사람</th>
			<th width="10%" >받는사람</th>
			<th width="15%" >제목</th>
			<th width="50%" >내용</th>
			<th width="15">작성일</th>
			
		</tr>
		
		
	<c:forEach items="${list }" var="list">
		<tr class="notice">
		<td>${list.nickname }</td>
		<td>${list.receiver }</td>
		<td>${list.title }</td>		
		<td>${list.message }</a></td>
		<td>${list.regdate }</td>
		
		</tr>
	
	</c:forEach>
	

	</table>
		


</body><%@ include file="../footer.jsp" %>
</html>