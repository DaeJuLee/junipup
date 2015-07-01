<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="JQueryInsert.do" method="post">
<table>
	<tr>
		<th>글번호</th>
		<td>
			<input type="number" name="bnum" required="required">
		</td>
	</tr>
	<tr>
		<th>닉네임</th>
		<td>
			<input type="text" name="nickname" required="required">
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>
			<input type="text" name="title" required="required">
		</td>
	</tr>
	<tr>
		<th>등급</th>
		<td>
			<input type="text" name="mrank" required="required">
		</td>
	</tr>

	<tr>
		<th>내용</th>
		<td>
			<input type="text" name="content" required="required">
		</td>
	</tr>
	<tr>
		<th>아이피</th>
		<td>
			<input type="text" name="ip" required="required">
		</td>
	</tr>
	<tr>
		<th>파일 사이즈</th>
		<td>
			<input type="number" name="filesize" required="required">
	</tr>
	<tr>
		<th>파일 이름</th>
		<td>
			<input type="text" name="filename" required="required">
		</td>
	</tr>
	<tr>
		<th>카테고리</th>
		<td>
			<input type="text" name="category" required="required">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="확인">
		</td>
	</tr>
</table>
</form>
</body>
</html>