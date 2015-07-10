<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.join_tbl {
	 width: 50%;
	 
	}

	#chk1{
		color: red;
	}
	#chk2{
		color: red;
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
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="js/log.js"></script>
<script type="text/javascript" src="js/password.js"></script>
<script type="text/javascript">
var tchk2 = 0, tchk3 =0;


$(function(){
	var password = document.getElementById("password");
	var password2 = document.getElementById("password2");
	$('#password2').attr('disabled', 'disabled');
	var passwordFocus = $('#password');
	var password2Focus = $('#password2');
	
	var focus1 = 1;
	var focus2 = 1;
	
		passwordFocus.keyup(function(){ 
			if(password.value.length != 0){
				$('#password2').removeAttr('disabled');
			}
		}); 
		passwordFocus.blur(function(){ 
			
		});
		password2Focus.focus(function(){ 

		}); 
		password2Focus.blur(function(){ 
			/* alert("포커스2 벗어남"); */
			if(password2.value.length != 0){
				if(password.value == password2.value){
					$(function(){
						alert("비밀번호 일치");
						tchk2 = 1;
					});
				}else{
					alert("비밀번호 불일치");
				}		
				
			}
		});
	

	
	$(function() {
		
		var nick = document.getElementById("nickname");
		var Resultchkhtml2 = "닉네임을 입력해주세요";
		$("#chk2").html(Resultchkhtml2);
		

		$("#nicknamechk").click(function() {
			if(nick.value.length >= 3){
				 
			 $.ajax({
	           url :"nicknamechk.do",
	           type: "POST",
	           data : { "nickname" : $("#nickname").val() },
	           datatype : "text",
	           success : function(data){
	         
	               if(data == "1"){
	            	   Resultchkhtml2 = "이미 있는 닉네임입니다.";
	            	   $("#chk2").html(Resultchkhtml2);
	               }else if(data == "0"){
	            	   Resultchkhtml2 = "사용가능한 닉네임입니다.";
	            	   $("#chk2").html(Resultchkhtml2);
	            	   tchk3 = 1;

	               }else{
	            	   Resultchkhtml2 = "닉네임을 입력해주세요";
	            	   $("#chk2").html(Resultchkhtml2);
	               }
	           },
	           error:function(request, status, error){
	           	alert("code:"+ request.status + "\n" + "error:"+error);
	           }
	       }); 
			 
		}/*if문 끝  */
		else if(id.value.length < 3){
			Resultchkhtml2 = "세글자 이상을 입력하세요";
			$("#chk2").html(Resultchkhtml2);
		}

		});
	});
	

});

	$(function(){

		$("#password2").change(function(){
			tchk2 = 0;
		});
		$("#nickname").change(function(){
			tchk3 = 0;
		});
	});
		
			
		

$(function(){

	$("#login").submit(function() {
	

		if(tchk2 == 0){
			alert("비밀번호 일치확인을 해주세요");
			return false;			
		}
		if(tchk3 == 0){
			alert("닉네임 중복확인을 해주세요");
			return false;
		}
		if(tchk2 == 1 && tchk3 == 1){
			return true;
		}
	});
});
	
</script>
</head>
<body>
<form action="memupdate.do" id="login" method="post" name="frm">
	<div align="center">		
	<table class="join_tbl">
		 <colgroup>
			<col width="15%" />
			<col width="50%" />
		 	<col width="35%" /> 
			<!-- <col width="40%" />  -->
		</colgroup> 
		<tr><th colspan="3" id="title"><h2>회원정보수정</h2></th></tr>
		<tr><th colspan="1">아이디</th>
		
			<td><input type="email" name="email" id="email" value="${USER_KEY.email}" disabled="disabled" class="inputText" required="required">
			
			<input type="email" name="email" id="email" value="${USER_KEY.email}" hidden="" class="inputText" required="required">
			
		<tr><th colspan="1">패스워드</th>
			<td><input type="password" name="password" id="password" class="inputText" required="required"></td><td></td></tr>
			
		<tr><th colspan="1">비밀번호확인</th>
			<td><input type="password" name="password2" id="password2" class="inputText" required="required">
			<!-- <div id="passcheck"></div> --></td><td><div id="passcheck"></div></td></tr>
			
		<tr><th>닉네입</th>
			<td ><input type="text" name="nickname" id="nickname" title="닉네임의 최대길이는 16글자 입니다." class="inputText" size="16" maxlength="16" required="required">
			&nbsp&nbsp<input type="button" id="nicknamechk" value="중복체크">&nbsp&nbsp<td><div id="chk2"></div></td></tr>
			
		<tr><th>이름</th>
			<td ><input type="text" name="name" id="name" class="inputText" value="${USER_KEY.name}" disabled="disabled" required="required"></td><td></td></tr>
			
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
		
		
			
		<tr><th>프로필사진</th>
			<td ><input type="file" name="photo"  id="photo" value="${USER_KEY.photo}"></td><td></td></tr>
			
		<tr><td></td><td align="center"><input type="submit" value="확인">&nbsp&nbsp<input type="reset" value="취소"></td><td></td></tr>
		
	</table>
	</div>
</form>
</body>

</html>