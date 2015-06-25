<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<form action="javaUpdate.do" method="post">
<body>
	현재페이지<input type="text" name="currentPage" value="${currentPage }">
	별명<input type="text" name="nickname" value="${javaDetail.nickname }" required="required"><p>
	제목<input type="text" name="title" value="${javaDetail.title }" required="required"><p>
	등급</th><td><input type="text" name="mrank" value="${javaDetail.mrank }" required="required"><p>
	ip</th><td><input type="text" name="ip" value="${javaDetail.ip }" required="required"><p>
	파일크기</th><td><input type="text" name="filesize" value="${javaDetail.filesize }" required="required"><p>
	파일이름</th><td><input type="text" name="filename" value="${javaDetail.filename }" required="required"><p>
	카테고리</th><td><input type="text" name="category" value="${javaDetail.category }" required="required"><p>
	내용</th><td><textarea rows="10" cols="50" name="content" required="required">${javaDetail.content }</textarea><p>
	<input type="submit" value="확인"><input type="reset" value="취소">
</body>
</form>
</html>