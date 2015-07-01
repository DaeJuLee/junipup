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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/log.js"></script>
<script type="text/javascript" src="js/password.js"></script>
<script type="text/javascript">

$(function() {
	var id = document.getElementById("id");
	$("#idchk").click(function() {
		 /* alert("쿼리가 먹히나"); */
		 /* alert(id.value.length); */
		 /* alert(id.value); */
		 if(id.value.length >= 3){
			 /* alert("두글자 넘음"); */
		 $.ajax({
           url :"idchk.do",
           type: "POST",
           data : { "id" : $("#id").val() },
           datatype : "text",
           success : function(data){
           	alert(data);
               if(data == "1"){
               	alert("이미 있는 아이디입니다.");
               }else if(data == "0"){
               	alert("사용하세요");
               }else{
               	alert("id 입력해주세요");
               }
           },
           error:function(request, status, error){
           	alert("code:"+ request.status + "\n" + "error:"+error);
           }
       }); 
		 
	}/*if문 끝  */
	else if(id.value.length < 3){
		alert("세글자 이상을 입력하세요");
	}

	});
});

$(function(){
	var password = document.getElementById("password");
	var password2 = document.getElementById("password2");
	$('#password2').attr('disabled', 'disabled');
	var passwordFocus = $('#password');
	var password2Focus = $('#password2');
	var focus = 1;
	var focus1 = 1;
	var focus2 = 1;
	if(focus==1){
		passwordFocus.focus(function(){ 
			/* alert("포커스"); */
			/* focus1 = 2; */
		}); 
		passwordFocus.blur(function(){ 
			/* alert("포커스 벗어남"); */
			if(password.value.length != 0){
				alert(password.value.length);
				$('#password2').removeAttr('disabled');
			}
		});
		password2Focus.focus(function(){ 
			/* alert("포커스2"); */
			/* focus2 = 2; */
		}); 
		password2Focus.blur(function(){ 
			/* alert("포커스2 벗어남"); */
			if(password2.value.length != 0){
				alert(password2.value.length);
				/* focus=4; */
				$(function(){
					alert("비밀번호 일치 확인");
					/* var password = new Password(frm.password.value, frm.password2.value); */
					var password = new Password($('#password').val(), $('#password2').val());
					log('변경전');
					/* log('넣는거야?' + password.toString()); */
					alert("비밀번호 일치 확인 끝");
				});
			}
		});
	
	}//if문 끝
	
	/* if(focus==4 && focus1==2 && focus2 ==2){
	alert("비밀번호 일치 확인");
	var password = new Password(password.value, password2.value);
	var html = document.getElementById("passcheck");
	if(password.getEqual()=="1"){
		p1.innerHTML = "비밀번호 일치";
	}
	}else{
		p1.innerHTML = "비밀번호 불일치";
	} */
	
	/* if(focus==4 && password.value.length==password2.value.length){
		for(var i = 0; i < password.value.length; i++){
			if(password.value[i]==password2.value[i]){
				focus=5;
			}
		}
	}else{
		alert("패스워드가 다릅니다.")
	}
	
	if(focus==5){
		alert("패스워드가 같습니다.");
	} */
	
});
	
</script>
</head>
<body>
<form action="memjoin.do" id="login" method="post" name="frm">
	<div align="center">		
	<table class="join_tbl">
		 <colgroup>
			<col width="15%" />
			<col width="50%" />
		 	<col width="35%" /> 
			<!-- <col width="40%" />  -->
		</colgroup> 
		<tr><th colspan="3">회원가입</th></tr>
		<tr><th colspan="1">아이디</th>
			<td><input id="id" type="text" name="id" id="memberID" class="inputText" maxlength="12" value="${id }" required="required">
			&nbsp&nbsp<input type="button" id="idchk" value="중복체크"></td><td></td></tr>
			
		<tr><th colspan="1">패스워드</th>
			<td><input type="password" name="password" id="password" class="inputText" required="required"></td><td></td></tr>
			
		<tr><th colspan="1">비밀번호확인</th>
			<td><input type="password" name="password2" id="password2" class="inputText" required="required">
			<!-- <div id="passcheck"></div> --></td><td><div id="passcheck"></div></td></tr>
			
		<tr><th>닉네입</th>
			<td ><input type="text" name="nickname" id="nickname" class="inputText" required="required"></td><td></td></tr>
			
		<tr><th>이름</th>
			<td ><input type="text" name="name" id="name" class="inputText" required="required"></td><td></td></tr>
			
		<tr><th>전화번호</th>
			<td><div id="phone">
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
		</td><td></td></tr>
		
		<tr><th>이메일</th>
			<td ><input type="email" name="email" class="inputText" required="required"></td><td></td></tr>
			
		<tr><th>사진</th>
			<td ><input type="file" name="photo"  id="photo"></td><td></td></tr>
			
		<tr><td></td><td align="center"><input type="submit" value="확인">&nbsp&nbsp<input type="reset" value="취소"></td><td></td></tr>
		
	</table>
	</div>
</form>
</body>
</html>