<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
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
			<td>${javaDetail.category }</td>
			<th scope="row">제목</th>
			<td colspan="3">${javaDetail.title }</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th scope="row">작성자</th>
			<td>${javaDetail.nickname }</td>
			<th scope="row">작성일</th>
			<td>${javaDetail.b_date }</td>
			<th scope="row">등급</th>
			<td>${javaDetail.mrank }</td>
		</tr>
		<tr>
			<th scope="row">아이피</th>
			<td>${javaDetail.ip }</td>
			<th scope="row">파일크기</th>
			<td> ${javaDetail.filesize }</td>
			<th scope="row">파일이름</th>
			<td>${javaDetail.filename }</td>			
		</tr>
		<tr>
		<td colspan="6" class="cont">내용 : ${javaDetail.content }</td>
		</tr>	
	</tbody>
	</table>		
<input type="button" value="목록보기" 
		onclick="location.href='javaMain.do?=${javaDetail}'" class="button">
<input type="button" value="수정" 
		onclick="location.href='DBUpdateForm.do?title=${DBDetail.title }'" class="button">
<input type="button" value="삭제" 
		onclick="location.href='DBDeleteCheck.do?title=${DBDetail.title}'" class="button">	
</body>
</html>
