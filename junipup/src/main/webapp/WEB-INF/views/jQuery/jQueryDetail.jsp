<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
별명 : ${JQueryDetail.nickname }<p>
제목 : ${JQueryDetail.title }<p>
등급 : ${JQueryDetail.mrank }<p>
날짜 : ${JQueryDetail.b_date }<p>
내용 : ${JQueryDetail.content }<p>
아이피 : ${JQueryDetail.ip }<p>
파일크기 : ${JQueryDetail.filesize }<p>
파일이름 : ${JQueryDetail.filename }<p>
카테고리 : ${JQueryDetail.category }<p>
		<td colspan="2">
			<input type="button" value="목록" 
				onclick="location.href='JQueryMain.do'">
			<input type="button" value="수정" 
				onclick="location.href='JQueryUpdateForm.do?bnum=${JQueryDetail.bnum}'">
 			<input type="button" value="삭제" 
				onclick="location.href='JQueryDeleteCheck.do?bnum=${JQueryDetail.bnum}'">
		</td>
	</tr>
</body>
</html>