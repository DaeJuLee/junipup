<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지 보내기</title>

</head>
<body>
<form action="insertMessage.do" id="message" method="post">
<table>

<!-- <colgroup>
		<col width="15">
		<col width="20">
</colgroup> -->
	<tr><td>보내는 사람 : ${sender }</td><td><input type="hidden" name="nickname" value="${sender }"></td></tr>
	
	<tr><td>받는 사람 : ${receiver}</td><td><input type="hidden" name="receiver" value="${receiver}"></td></tr>	
		<tr><th>제목</th>	</tr>
		<tr><td><input type="text" name="title" required="required"></td></tr>
		<tr><th>내용</th></tr>
			<tr><td><textarea rows="9" cols="30" name="message" 
			required="required" style="resize: none; wrap:hard; width: 100%;"></textarea></td></tr>
			
		<!-- private int mnum;
	private String nickname;
	private String receiver;
	private String title;
	private String msg;
	private Date regdate;
	private int confirm; -->
</table>
	<div>
		<button type="button" onclick="onWrite()">보내기</button>
		<button type="button"onclick="history.go(-1);"> 취소</button>
	</div>	
</form>
</body>
<script type="text/javascript">
	var onWrite = function(){
		var message = document.getElementById("message");  
		message.action ="insertMessage.do";              
		message.submit(); 
	};
</script>
</html>