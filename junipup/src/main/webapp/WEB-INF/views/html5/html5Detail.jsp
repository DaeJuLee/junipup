<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
별명 : ${html5Detail.nickname }<p>
제목 : ${html5Detail.title }<p>
등급 : ${html5Detail.mrank }<p>
날짜 : ${html5Detail.b_date }<p>
내용 : ${html5Detail.content }<p>
아이피 : ${html5Detail.ip }<p>
파일크기 : ${html5Detail.filesize }<p>
파일이름 : ${html5Detail.filename }<p>
카테고리 : ${html5Detail.category }<p>
		<td colspan="2">
			<input type="button" value="목록" 
				onclick="location.href='html5Main.do'">
			<input type="button" value="수정" 
				onclick="location.href='html5UpdateForm.do?bnum=${html5Detail.bnum}'">
 			<input type="button" value="삭제" 
				onclick="location.href='html5DeleteCheck.do?bnum=${html5Detail.bnum}'">
		</td>
	</tr>
</body>
</html>