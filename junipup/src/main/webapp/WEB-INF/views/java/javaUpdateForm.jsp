<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<form action="javaUpdate.do" method="post">
<body>	
	<table cellspacing="0" border="1" class="table" align="center">
	<colgroup>
		<col width="80"><col><col width="80">
		<col width="150"><col width="80"><col width="150">
	</colgroup>	
		<tr><th>제목</th>
			<td><input type="text" name="title" value="${javaDetail.title }" required="required"></td></tr>
		<tr><th>별명</th>
			<td><input type="text" name="nickname" value="${javaDetail.nickname }" required="required"></td></tr>
		<tr><th>등급</th>
			<td><input type="text" name="mrank" value="${javaDetail.mrank }" required="required"></td></tr>
		<tr><th>ip</th>
			<td><input type="text" name="ip" value="${javaDetail.ip }" required="required"></td></tr>
		<tr><th>파일크기</th>
			<td><input type="text" name="filesize" value="${javaDetail.filesize }" required="required"></td></tr>
		<tr><th>파일이름</th>
			<td><input type="text" name="filename" value="${javaDetail.filename }" required="required"></td></tr>
		<tr><th>카테고리</th>
			<td><input type="text" name="category" value="${javaDetail.category }" required="required"></td></tr>
		<tr><th>내용</th>
			<td><textarea rows="10" cols="50" name="content" required="required">${DBDetail.content }</textarea></td></tr>
	</table>
	<input type="button" value="목록보기" 
		onclick="location.href='javaMain.do?=${javaDetail}'" class="button">
	<input type="submit" value="확인" class="button">
	<input type="reset" value="취소" class="button">
</body>
</form>
</html>