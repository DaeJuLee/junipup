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

	<!-- <div class="bg"></div>
	<div id="join" class="g_join">
		<form action="" class="g_join">
			<fieldset>
				<legend>회원가입</legend>
				<div class="item">
					<label class="i_label"
						style="position: absolute; visibility: visible;">ID</label><input
						name="id" type="text" value="" 
						class="i_text upw">
				</div>
				<div class="item">
					<label class="i_label"
						style="position: absolute; visibility: visible;">NICKNAME(별명)</label><input
						name="nickname" type="text" value="" 
						class="i_text upw">
				</div>
				<div class="item">
					<label class="i_label"
						style="position: absolute; visibility: visible;">PASSWORD</label><input
						name="" type="password" value="" class="i_text upw">
				</div>
				<span ><input type="submit" value="회원가입"></span>
				<span ><input type="button" value="취소" onclick="location.href='#'"></span>
			</fieldset>
		</form>
	</div> -->

</body>
</html>
