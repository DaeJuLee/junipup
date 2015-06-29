<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.join_tbl {
	 width: 50%;
	 
	}
	.join_tbl th {
		width: 980px; border-collapse:collapse; border-spacing:0; border-top:2px solid #ddd;
			border-bottom:2px solid #ddd; font-size:11px; font-family:dotum; margin-bottom:30px
	}
	.join_tbl td {
		padding:5px 15px; border-bottom:1px solid #ddd
	}
	.join_tbl td .inputText {
		width:100px; border:1px solid #ccc
	}
	.join_tbl td span {
		color:#888
	}
	
</style>
<!-- jQuery libaray 추가 -->
<script type="text/javascript" src="../js/jquery.js"></script>
<!-- jQuery 예약어 충동 방지 처리 -->

<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">

	
</script>
</head>
<body>
<form action="memjoin.do" id="login" method="get">
	<div align="center">		
	<table class="join_tbl">
		<colgroup>
			<col width="10%" />
			<col width="40%" />
			<col width="10%" />
			<col width="40%" />
		</colgroup>
		<tr><th colspan="2">회원가입</th></tr>
		<tr><th>아이디</th>
			<td  colspan="3"><input type="text" name="id" id="memberID" class="inputText" maxlength="12" required="required"></td></tr>
		<tr><th>패스워드</th>
			<td><input type="password" name="password" id="password" class="inputText" required="required"></td></tr>
		<tr><th>비밀번호확인</th>
			<td colspan="3"><input type="password" name="password2" id="password2" class="inputText" required="required"></td></tr>
		<tr><th>닉네입</th>
			<td colspan="3"><input type="text" name="nickname" id="nickname" class="inputText" required="required"></td></tr>
		<tr><th>이름</th>
			<td colspan="3"><input type="text" name="name" id="name" class="inputText" required="required"></td></tr>
		<tr><th>전화번호</th>
			<td colspan="3"><div id="phone">
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
			<input type="text" name="tel2" id="tel2" class="inputText" size="4" maxlength="4" required="required">-
			<input type="text" name="tel3" id="tel3" class="inputText" size="4" maxlength="4" required="required"></div>
		</td></tr>
		<tr><th>이메일</th>
			<td colspan="3"><input type="email" name="email" class="inputText" required="required"></td></tr>
		<tr><th>사진</th>
			<td colspan="3"><input type="file" name="photo" class="inputText" id="photo"></td></tr>
		<tr><td colspan="2" align="center"><input type="submit" value="확인">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="reset" value="취소"></td></tr>
	</table>
	</div>
</form>
</body>
</html>