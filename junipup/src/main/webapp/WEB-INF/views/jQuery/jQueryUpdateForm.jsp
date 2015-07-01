<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<form action="JQueryUpdate.do" method="post">
	글번호 : ${JQueryUpdateForm.bnum }<p>
	닉네임 : ${JQueryUpdateForm.nickname }<p>
	등급 : ${JQueryUpdateForm.mrank }<p>
	ip : ${JQueryUpdateForm.ip }<p>
	<input type="hidden" name="nickname" value="${JQueryUpdateForm.nickname }" required="required"><p>
	<input type="hidden" name="bnum" value="${JQueryUpdateForm.bnum }" required="required"><p>
	<input type="hidden" name="mrank" value="${JQueryUpdateForm.mrank }" required="required"><p>
	<input type="hidden" name="ip" value="${JQueryUpdateForm.ip }" required="required"><p>
	파일크기 : </th><td><input type="text" name="filesize" value="${JQueryUpdateForm.filesize }" required="required"><p>
	파일이름 : </th><td><input type="text" name="filename" value="${JQueryUpdateForm.filename }" required="required"><p>
	카테고리 : </th><td><input type="text" name="category" value="${JQueryUpdateForm.category }" required="required"><p>
	제목 : <input type="text" name="title" value="${JQueryUpdateForm.title }" required="required"><p>
	내용 : </th><td><textarea rows="10" cols="50" name="content" required="required">${JQueryUpdateForm.content }</textarea><p>
	<input type="submit" value="확인">
	<input type="reset" value="취소" onclick="location.href='JQueryMain.do'">

</body>
</form>
</html>