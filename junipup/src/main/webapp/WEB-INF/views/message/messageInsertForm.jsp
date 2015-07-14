<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
<script type="text/javascript" src="resources/se/js/HuskyEZCreator.js" charset="utf-8" ></script>
<script type="text/javascript" src="resources/se/js/jindo.min.js" charset="utf-8" ></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지 보내기</title>
<style type="text/css">
#boardWriteForm{margin: 30px 0;}
</style> 
</head>
<body>
<div class="container">
<form action="insertMessage.do" id="boardWriteForm" method="post">
<table align="center">

<!-- 	<colgroup>
		<col width="80"><col><col width="80">
		<col width="150"><col width="80"><col width="150">
	</colgroup> -->
	<tr><td><input type="text" name="nickname" value="${USER_KEY.nickname }"></td></tr>
	
	<tr><td><input type="text" name="receiver" value="${nickname}"></td></tr>	
		<tr><th>제목</th></tr>
			<tr><td><input type="text" name="title" required="required"></td></tr>
		<tr><th>내용</th></tr>
			<tr><td><textarea rows="9" cols="120" name="msg" 
			required="required" style="resize: none; wrap:hard; width: 100%;"></textarea></td></tr>
			
		<!-- private int mnum;
	private String nickname;
	private String receiver;
	private String title;
	private String msg;
	private Date regdate;
	private int confirm; -->
	<tr><td><input type="submit"></td></tr>
</table>
	<div class="buttonDiv">
		<button type="button" class="btn btn-primary" onclick="onWrite()">보내기</button>
		<button type="button" class="btn btn-primary" onclick="history.go(-1);"> 취소</button>
	</div>	
</form>
</body>
<script type="text/javascript">
	var onWrite = function(){
		var boardWriteForm = document.getElementById("boardWriteForm");  
		boardWriteForm.action ="insertMessage.do";              
		boardWriteForm.submit(); 
	};
</script>
</html>