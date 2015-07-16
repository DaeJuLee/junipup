<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<%@ include file="mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ad.css" type="text/css">
<script type="text/javascript">
function check_submit(obj){

	if(!obj.subject.value) { alert("제목을 입력하세요"); obj.subject.focus(); return false; }
	if(!obj.name.value) { alert("이름을 입력하세요"); obj.name.focus(); return false; }
	if(!obj.tel.value) { alert("연락처를 입력하세요"); obj.tel.focus(); return false; }
	if(!obj.email.value) { alert("email을 입력하세요"); obj.email.focus(); return false; }
	if(!obj.contents.value) { alert("광고내용을 입력하세요"); obj.contents.focus(); return false; }
}


</script>
</head>
<body>
<img  src="images/adtitle.jpg"/>
<form name="adForm" method="post" action="adMail.do" onsubmit="return check_submit(this);" style="margin:0px;padding:0px;">	
	

<table width="780" cellpadding="0" cellspacing="0">
		<tr>
			<td>
			<table class="board01">	
				<tr>
					<th colspan="2"></th>
				</tr>
				<tbody class="num">
				<tr>
					<td width="25%" class="view"><b>제목</b></td>
					<td class="end" style="text-align:left">&nbsp;<input type="text" name="subject" style="width:95%" class="input"></td>
				</tr>	
				<tr>
					<td class="view" height="28"><b>Name</b></td>
					<td class="end" style="text-align:left">&nbsp;<input type="text" name="name" size="20" maxlength="20" value="" class="input"></td>
				</tr>
				
				<tr>
					<td class="view" height="28"><b>연락처</b></td>
					<td class="end" style="text-align:left">&nbsp;<input type="text" name="tel" size="40" maxlength="20" value="" class="input"></td>
				</tr>		
				<tr>
					<td class="view" height="28"><b>E-mail </b></td>
					<td class="end" style="text-align:left"><input type="text" name="email" size="35" maxlength="255" value="" class="input"></td>
				</tr>				
				<tr>
					<td class="view" height="28"><b>Homepage</b></td>
					<td class="end" style="text-align:left">&nbsp;<input type="text" name="homepage" size="50" maxlength="255" value=""  class="input"> 광고할 홈페이지 주소를 입력해주세요.</td>
				</tr>		
				<tr>
					<td class="view" height="28"><b>광고내용</b></td>
					<td class="end" style="text-align:left">&nbsp;<textarea name="contents" class="textarea02" style="width:98%;height:150px;"></textarea></td>
				</tr>
			</table>
			<br/>
			<div align="center"><input type="submit" value='광고요청' class="board_button"> &nbsp; <input type="button" value='돌아가기' class="board_button" onClick="history.back()"></div>
			<br/><br/>
			</form>
			</td>
		</tr>
	</table>


</body>
</html>