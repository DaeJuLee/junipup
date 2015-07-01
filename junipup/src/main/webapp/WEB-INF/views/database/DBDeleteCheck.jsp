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
 
</head>
<body>
<div class="mw_login open">
	<div class="bg"></div>
	<div id="login" class="g_login">
		<form id="g_login" class="g_login">
			정말로 삭제 하시겠습니까?
			<fieldset>
				<span class="btn_login">
					<a href="DBDelete.do?bnum=${bnum.bnum }">삭제</a>
					<a href="DBDetail.do?bnum=${bnum.bnum }">취소</a>
				</span>
			</fieldset>
		</form>
	</div>
</div>

</body>
</html>