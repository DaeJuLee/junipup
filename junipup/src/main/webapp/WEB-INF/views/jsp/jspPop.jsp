<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<h2>회원 정보</h2>
<body>
등급 : ${nick.mrank }<p>
닉네임 : ${nick.nickname }<p>
${nick.photo }<p>
이름 : ${nick.name }<p>
전화 번호 : ${nick.phoneNumber }<p>
이메일 : ${nick.email }<p>
마지막으로 로그인 한 날짜 : ${nick.loginDate }

</body>
</html>