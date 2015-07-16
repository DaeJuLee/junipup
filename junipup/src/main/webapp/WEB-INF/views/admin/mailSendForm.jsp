<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/ad.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지 보내기</title>
<script type="text/javascript">
function check_submit(obj){

	if(!obj.title.value) { alert("제목을 입력하세요"); obj.subject.focus(); return false; }
	if(!obj.content.value) { alert("내용을 입력하세요"); obj.name.focus(); return false; }
	
}
</script>
</head>
<body>


<form name="adForm" method="post" action="mailsend.do" onsubmit="return check_submit(this);" style="margin:0px;padding:0px;">	
	

<table width="400" height="320" cellpadding="0" cellspacing="0">
		<tr>
			<td>
			<table class="board01">	
				<tr>
					<th colspan="2"></th>
				</tr>
				<tbody class="num">
				<tr>
					<td width="10%" class="view"><b>받는사람</b></td>
					<td width="90%" class="end" style="text-align:left">&nbsp;${recever}<input type="hidden" name="recever" value="${recever}"></td>
				</tr>	
				<tr>
					<td width="10%" class="view"><b>제목</b></td>
					<td width="90%" class="end" style="text-align:left">&nbsp;<input type="text" name="title" style="width:95%" class="input"></td>
				</tr>	
				<tr>
					<td width="10%" class="view"><b>내용</b></td>
					<td width="90%" class="end" style="text-align:left">&nbsp;
					<textarea rows="10" cols="50" id="txtContent" 
			name="content" required="required" style="width:95%;" class="input"></textarea>
					</td>
				</tr>	
				

	<tr><td width="25%" class="view"><input type="submit" value="보내기"></td><td width="25%" class="view"><button type="button"onclick="window.close();"> 취소</button></td></tr>
</table>
</td>
</tr>
</table>
</form>
</body>

</html>