<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function go_pop(nick) {
	window.open(
					"messageInsertForm.do?nickname="+nick,
					"new",
					"width=370, height=360, resizable=no, scrollbars=no, status=no, location=no, directories=no; left=450; top=250");
}
</script>
</head>
<h2>회원 정보</h2>
<body>
	
	등급 : ${nick.mrank }<p>
	닉네임 : ${nick.nickname }<p>
	${nick.photo }<p>
	이름 : ${nick.name }<p>
	전화 번호 : ${nick.phoneNumber }<p>
	이메일 : ${nick.email }<p>
	마지막으로 로그인 한 날짜 : ${nick.loginDate }<p>

	<input type="hidden" name="receiver" value="${nick.nickname }"> 
	<input type="button" value="쪽지 보내기" 
			onclick="go_pop('${jsp.nickname}')">
			
</body>
</html>