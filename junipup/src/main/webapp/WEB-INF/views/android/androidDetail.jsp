<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
별명 : ${androidDetail.nickname }<p>
제목 : ${androidDetail.title }<p>
등급 : ${androidDetail.mrank }<p>
쓴날 : ${androidDetail.b_date }<p>
내용 : ${androidDetail.content }<p>
아이피 : ${androidDetail.ip }<p>
파일크기 : ${androidDetail.filesize }<p>
파일이름 : ${androidDetail.filename }<p>
카테고리 : ${androidDetail.category }<p>
<a href="androidMain.do">목록보기</a>
<a href="#">수정</a>
<%-- <input type="button" value="삭제" 
		onclick="location.href='delete.do?empno=${selectEname.empno}'"> --%>
</body>
</html>
