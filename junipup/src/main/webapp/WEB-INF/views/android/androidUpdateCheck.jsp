<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" media="all" href="css/deleteCheck.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function cancel(){
		
	}
</script>
</head>
<body> 
<div class="mw_login open">
	<div class="bg"></div>
	<div id="login" class="g_login">
		<form action="androidUpdate.do" id="g_login" class="g_login">
			정말로 수정 하시겠습니까?
			<fieldset>
				<span class="btn_login">
					<input type="submit" value="수정">
					<%-- <a href="androidUpdate.do?android=${androidCheck}">수정</a> --%>
					<%-- <a href="androidDetail.do?title=${androidCheck.title}">취소</a> --%>
					<input type="button" value="취소" 
						onclick="location.href='androidDetail.do?title=${androidCheck.title }'">
				</span>
			</fieldset>
			<input type="hidden" name="nickname" value="${androidCheck.nickname }">
			<input type="hidden" name="title" value="${androidCheck.title }">
			<input type="hidden" name="mrank" value="${androidCheck.mrank }">
			<input type="hidden" name="ip" value="${androidCheck.ip }">
			<input type="hidden" name="filesize" value="${androidCheck.filesize }">
			<input type="hidden" name="filename" value="${androidCheck.filename }">
			<input type="hidden" name="category" value="${androidCheck.category }">
			<input type="hidden" name="content" value="${androidCheck.content }">
		</form>
	</div>
</div>

</body>
</html>