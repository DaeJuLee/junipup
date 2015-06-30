<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table cellspacing="0" border="1" class="table" align="center">
	<colgroup>
	<col width="80"><col><col width="80">
	<col width="150"><col width="80"><col width="150">
	</colgroup>
	<thead>
		<tr>
			<th scope="row">카테고리</th>
			<td>${jspDetail.category }</td>
			<th scope="row">제목</th>
			<td colspan="3">${jspDetail.title }</td>
		</tr>
	</thead>
	<tbody> 
		<tr>
			<th scope="row">작성자</th>
			<td>${jspDetail.nickname }</td>
			<th scope="row">작성일</th>
			<td>${jspDetail.b_date }</td>
			<th scope="row">등급</th>
			<td>${jspDetail.mrank }</td>
		</tr>
		<tr>
			<th scope="row">아이피</th>
			<td>${jspDetail.ip }</td>
			<th scope="row">파일크기</th>
			<td> ${jspDetail.filesize }</td>
			<th scope="row">파일이름</th>
			<td>${jspDetail.filename }</td>			
		</tr>
		<tr>
		<td colspan="6" class="cont">내용 : ${jspDetail.content }</td>
		</tr>	
	</tbody>
	</table>		



<input type="button" value="목록보기" 
		onclick="location.href='jspMain.do?=${jspDetail}'" class="button">
<input type="button" value="수정" 
		onclick="location.href='jspUpdateForm.do?title=${jspDetail.title }'" class="button">
<input type="button" value="삭제" 
		onclick="location.href='jspDeleteCheck.do?title=${jspDetail.title}'" class="button">
		
</body>
</html>