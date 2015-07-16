<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/pop.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function go_pop(receiver, sender) {
	window.open(
					"messageInsertForm.do?receiver="+receiver+"&sender="+sender,
					"new",
					"width=370, height=360, resizable=no, scrollbars=no, status=no, location=no, directories=no; left=450; top=250");
}
</script>
</head>
<h2>회원 정보</h2>

<body>
<div id="pop">

<table border="0" align="center" width="350px" style="font-size: 15px; border-top:2px ; border-top-color: #999" >
	<th>
		회원 정보
	</th>
	<tr>
		${receiver.photo }
	</tr>
	<tr>
		<td>등급  </td>
		<td>${receiver.mrank }</td>
	</tr>
	<tr>
		<td>닉네임</td>
		<td>${receiver.nickname }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${receiver.name }</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td> ${receiver.phoneNumber }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td> ${receiver.email }</td>
	</tr>
	<tr>
		<td>최근로그인 날짜</td>
		<td> ${receiver.loginDate } 보내는 사람 : ${sender }</td>
	</tr>
</table>
</div>
	<input type="hidden" name="receiver" value="${receiver.nickname }"> 
	<input type="button" value="쪽지 보내기" 
			onclick="go_pop('${receiver.nickname}' , '${sender}')">


</html>
