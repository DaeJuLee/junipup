<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "javaInsert.do" method="post">
	별명<input type="text" name="nickname" required="required"><p>
	제목<input type="text" name="title" required="required"><p>
	등급<input type="text" name="mrank" required="required"><p>
	ip<input type="text" name="ip" required="required"><p>
	파일크기<input type="text" name="filesize" required="required"><p>
	파일이름<input type="text" name="filename" required="required"><p>
	카테고리<input type="text" name="category" required="required"><p>
	내용<textarea rows="10" cols="50" name="content" required="required"></textarea><p>
	<input type="submit" value="확인"><input type="reset" value="취소">
</form>
</body>
</html>