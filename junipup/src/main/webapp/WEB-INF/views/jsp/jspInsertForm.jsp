<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head> 
<body>
<form action = "jspInsert.do" method="post">
	<table cellspacing="0" border="1" class="table" align="center">
	<colgroup>
		<col width="80"><col><col width="80">
		<col width="150"><col width="80"><col width="150">
	</colgroup>		
		<tr><th>제목</th>
			<td><input type="text" name="title" required="required"></td></tr>
		<tr><th>별명</th>
			<td><input type="hidden" name="nickname" required="required"></td></tr>
		<tr><th>등급</th>
			<td><input type="hidden" name="mrank" required="required"></td></tr>
		<tr><th>ip</th>
			<td><input type="hidden" name="ip" required="required"></td></tr>
		<tr><th>파일크기</th>
			<td><input type="text" name="filesize" required="required"></td>
		<tr><th>파일이름</th>
			<td><input type="text" name="filename" required="required"></td>
		<tr><th>카테고리</th>
			<td><select name="category">
				<option value="기초익히기">기초익히기</option>
				<option value="등급올리기">등급올리기</option>
				<option value="질문게시판">질문게시판</option>
				<option value="응용게시판">응용게시판</option>
				</select></td>
		<tr><th>내용</th>
			<td><textarea rows="10" cols="50" name="content" required="required"></textarea></td>
	</table>
	<input type="button" value="목록보기" 
		onclick="location.href='jspMain.do?=${jspDetail}'" class="button">
	<input type="submit" value="확인" class="button" >
	<input type="reset" value="취소" class="button" >	
</form>
</body>
</html>