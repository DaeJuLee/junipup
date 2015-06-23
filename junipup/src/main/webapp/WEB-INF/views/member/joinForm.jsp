<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function(){
		var number;
		$('#tel1 option:selected').text().change(function(){
			number = $('#tel1 option:selected').text();
		});
		$('#phone').focusout(function(){
			$('#phoneNumber').val('number' + $('#tel2').val() + $('tel3').val());
			$('#phoneNumber').val(['number']);
		});
		$('#phone').blur(function(){
			$('#phoneNumber').val('number' + $('#tel2').val() + $('tel3').val());
			$('#phoneNumber').val(['number']);
		});
		$('#login input [type:submit]').click(function(){
			$('#phoneNumber').val('number' + $('#tel2').val() + $('tel3').val());
			$('#phoneNumber').val(['number']);
		});
	});
	
</script>
</head>
<body>

<h2>회원가입을 해볼까낭</h2>
<form action="memjoin.do" id="login" method="get">
	<table>
		<tr><th colspan="2">회원가입</th></tr>
		<tr><td>아이디</td><td><input type="text" name="id" id="id" maxlength="12" required="required"></td></tr>
		<tr><td>비밀번호</td><td><input type="password" name="password" id="password" required="required"></td></tr>
		<tr><td>비밀번호확인</td><td><input type="password" name="password2" id="password2" required="required"></td></tr>
		<tr><td>닉네입</td><td><input type="text" name="nickname" id="nickname" required="required"></td></tr>
		<tr><td>이름</td><td><input type="text" name="name" id="name" required="required"></td></tr>
		<tr><td>전화번호</td><td><div id="phone">
				<input type="hidden" name="phoneNumber" id="phoneNumber">
				<select name="tel1" id="tel1">
				<option>010</option><option>011</option>
				<option>016</option><option>017</option>
				<option>018</option><option>019</option>
				<option>02</option>
				<option>031</option>
				<option>032</option><option>033</option>
				<option>041</option><option>042</option><option>043</option>
				<option>051</option><option>052</option><option>053</option>
				<option>054</option><option>055</option>
				<option>061</option><option>062</option><option>063</option>
				<option>064</option><option>070</option>
			</select>
			<input type="text" name="tel2" id="tel2" size="4" maxlength="4" required="required">-
			<input type="text" name="tel3" id="tel3" size="4" maxlength="4" required="required"></div>
		</td></tr>
		<tr><td>이메일</td><td><input type="email" name="email" required="required"></td></tr>
		<tr><td>사진</td><td><input type="file" name="photo" id="photo"></td></tr>
		<tr><td colspan="2" align="center"><input type="submit" value="확인">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="reset" value="취소"></td></tr>
	</table>
</form>
</body>
</html>