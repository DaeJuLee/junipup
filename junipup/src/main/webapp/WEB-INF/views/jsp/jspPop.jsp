<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/pop.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<div id="pop">

<table border="1" style="background: aqua;">
	<tr><td>으악</td><td>으악</td></tr>
</table>
		회원 정보
		등급 : ${nick.mrank }
		
	닉네임 : ${nick.nickname }<p>
	${nick.photo }<p>
	이름 : ${nick.name }<p>
	전화 번호 : ${nick.phoneNumber }<p>
	이메일 : ${nick.email }<p>
	마지막으로 로그인 한 날짜 : ${nick.loginDate }
	
</div>
</body>
</html>