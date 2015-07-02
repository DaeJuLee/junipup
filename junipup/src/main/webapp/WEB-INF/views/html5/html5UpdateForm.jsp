<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<form action="html5Update.do" method="post">
	글번호 : ${html5UpdateForm.bnum }<p>
	닉네임 : ${html5UpdateForm.nickname }<p>
	등급 : ${html5UpdateForm.mrank }<p>
	ip : ${html5UpdateForm.ip }<p>
	<input type="hidden" name="nickname" value="${html5UpdateForm.nickname }" required="required"><p>
	<input type="hidden" name="bnum" value="${html5UpdateForm.bnum }" required="required"><p>
	<input type="hidden" name="mrank" value="${html5UpdateForm.mrank }" required="required"><p>
	<input type="hidden" name="ip" value="${html5UpdateForm.ip }" required="required"><p>
	파일크기 : </th><td><input type="text" name="filesize" value="${html5UpdateForm.filesize }" required="required"><p>
	파일이름 : </th><td><input type="text" name="filename" value="${html5UpdateForm.filename }" required="required"><p>
	카테고리 : </th><td><input type="text" name="category" value="${html5UpdateForm.category }" required="required"><p>
	제목 : <input type="text" name="title" value="${html5UpdateForm.title }" required="required"><p>
	내용 : </th><td><textarea rows="10" cols="50" name="content" required="required">${html5UpdateForm.content }</textarea><p>
	<input type="submit" value="확인">
	<input type="reset" value="취소" onclick="location.href='html5Main.do'">

</body>
</form>
</html>