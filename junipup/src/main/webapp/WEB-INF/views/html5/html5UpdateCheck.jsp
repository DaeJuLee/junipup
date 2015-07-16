<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" media="all" href="css/deleteCheck.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<form action="html5Update.do" method="post">
<body>
<div class="mw_login open">
	<div class="bg"></div>
	<div id="login" class="g_login">
		<form id="g_login" class="g_login">
			수정 하시겠습니까?
			<fieldset>
				<span class="btn_login">
					<input type="submit" value="수정"></a>
<%-- 					<a href="html5Update.do?bnum=${board.bnum }">수정</a> --%>
					<a href="html5Detail.do?bnum=${board.bnum }">취소</a>
				</span>
			</fieldset>
	<input type="hidden" name="nickname" value="${html5UpdateCheck.nickname }" required="required"><p>
	<input type="hidden" name="bnum" value="${html5UpdateCheck.bnum }" required="required"><p>
	<input type="hidden" name="mrank" value="${html5UpdateCheck.mrank }" required="required"><p>
	<input type="hidden" name="ip" value="${html5UpdateCheck.ip }" required="required"><p>
	<input type="hidden" name="filesize" value="${html5UpdateCheck.filesize }" required="required"><p>
	<input type="hidden" name="filename" value="${html5UpdateCheck.filename }" required="required"><p>
	<input type="hidden" name="category" value="${html5UpdateCheck.category }" required="required"><p>
	<input type="hidden" name="title" value="${html5UpdateCheck.title }" required="required"><p>
	<input type="hidden" name="content" value="${html5UpdateCheck.content }" required="required"><p>
		</form>
	</div>
</div>

</body><%@ include file="../footer.jsp" %>
</form>
</html>