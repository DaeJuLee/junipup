<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../mainHeader2.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
<script type="text/javascript" src="resources/se/js/HuskyEZCreator.js" charset="utf-8" ></script>
<script type="text/javascript" src="resources/se/js/jindo.min.js" charset="utf-8" ></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판</title>
<style type="text/css">
#boardWriteForm{margin: 30px 0;}
</style>
</head> 
<body>
<div class="container">
<form action = "jQueryInsert.do" id="boardWriteForm" method="post">
	<table cellspacing="0" border="1" class="table" align="center">
	<colgroup>
		<col width="80"><col><col width="80">
		<col width="150"><col width="80"><col width="150">
	</colgroup>	
		<tr><th>제목</th>
			<td><input type="text" name="title" required="required"></td></tr>
		<tr><th>별명</th>
			<td><input type="hidden" name="nickname" value="${USER_KEY.nickname }">${USER_KEY.nickname }</td></tr>
		<tr><th>등급</th>
			<td><input type="hidden" name="mrank" value="${USER_KEY.mrank }" required="required">${USER_KEY.mrank }</td></tr>
		<tr><th>카테고리</th>
			<td><select name="category">
				<option value="기초익히기">기초익히기</option>
				<option value="등급올리기">등급올리기</option>
				<option value="질문게시판">질문게시판</option>
				<option value="응용게시판">응용게시판</option>
				</select></td></tr>
		<tr><th>내용</th>
			<td><textarea rows="10" cols="50" id="txtContent" 
			name="content" required="required" style="width:100%;"></textarea></td></tr>
	</table>
	<div class="buttonDiv">
		<button type="button" class="btn btn-primary" onclick="onWrite()">쓰기</button>
		<button type="button" class="btn btn-primary" onclick="history.go(-1);"> 취소</button>
	</div>
</form>
</div>
</body>
<script type="text/javascript">
var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: document.getElementById('txtContent'), // html editor가 들어갈 textarea id
	sSkinURI: "resources/se/SmartEditor2Skin.html",  // html editor가 skin url
	fOnAppLoad: function () { 
        //수정모드를 구현할 때 사용할 부분. 로딩이 끝난 후 값이 체워지게 하는 구현을 하면 된다.
         var title = '${item.title}';               
         var content = '${item.content}';         //db에서 불러온 값을 여기에서 체워넣으면 됨.
         document.getElementById("title").value = title;     
         oEditors.getById["txtContent"].exec("PASTE_HTML", [content]); //로딩이 끝나면 contents를 txtContent에 넣음
     },
     fCreator: "createSEditor2"
 });

var onWrite = function(){
	oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됨
	var boardWriteForm = document.getElementById("boardWriteForm");  
	boardWriteForm.action ="jspInsert.do";              
	boardWriteForm.submit(); 
};

var pasteHTML = function(filename){
    var sHTML = '<img src="${pageContext.request.contextPath}/resources/upload/'+filename+'">';
    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);
};
</script>
</html>