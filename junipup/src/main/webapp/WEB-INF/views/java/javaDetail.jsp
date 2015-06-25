<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
별명 : ${javaDetail.nickname }<p>
제목 : ${javaDetail.title }<p>
등급 : ${javaDetail.mrank }<p>
쓴날 : ${javaDetail.b_date }<p>
내용 : ${javaDetail.content }<p>
아이피 : ${javaDetail.ip }<p>
파일크기 : ${javaDetail.filesize }<p>
파일이름 : ${javaDetail.filename }<p>
카테고리 : ${javaDetail.category }<p>
<a href="javaMain.do">목록보기</a>
<a href="javaUpdateForm.do?title=${javaDetail.title }">수정</a>
<input type="button" value="삭제" 
		onclick="location.href='javaDeleteCheck.do?title=${javaDetail.title}'">
</body>
</html>
