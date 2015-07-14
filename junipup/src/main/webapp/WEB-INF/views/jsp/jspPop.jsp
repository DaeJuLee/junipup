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

<table border="0" align="center" width="350px" style="font-size: 15px; border-top:2px ; border-top-color: #999" >
	<th>
		회원 정보
	</th>
	<tr>
		${nick.photo }
	</tr>
	<tr>
		<td>등급  </td>
		<td>${nick.mrank }</td>
	</tr>
	<tr>
		<td>닉네임</td>
		<td>${nick.nickname }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${nick.name }</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td> ${nick.phoneNumber }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td> ${nick.email }</td>
	</tr>
	<tr>
		<td>최근로그인 날짜</td>
		<td> ${nick.loginDate }</td>
	</tr>
</table>
</div>
</body>
</html>