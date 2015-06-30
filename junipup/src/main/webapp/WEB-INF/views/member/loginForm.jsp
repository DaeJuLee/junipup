<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="login.do" method="post">
	<table>
		<tr><td>ID</td><td><input type="text" name="id" required="required"></td></tr>
		<tr><td>Password</td><td><input type="text" name="password" required="required"></td></tr>
		<tr><td colspan="2">
		<input type="submit" value="확인"><input type="reset" value="취소">
		</td></tr> 
	</table>
</form>
<a href="#">회원가입</a>
<a href="#">아이디/비밀번호 찾기</a>
</body>
</html>