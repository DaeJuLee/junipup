<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table cellspacing="0" border="1" class="table" align="center">
	<colgroup>
	<col width="80"><col><col width="80">
	<col width="150"><col width="80"><col width="150">
	</colgroup>
	<thead>
		<tr>
			<th scope="row">카테고리</th>
			<td>${DBDetail.category }</td>
			<th scope="row">제목</th>
			<td colspan="3">${DBDetail.title }</td>
		</tr>
	</thead>
	<tbody> 
		<tr>
			<th scope="row">작성자</th>
			<td>${DBDetail.nickname }</td>
			<th scope="row">작성일</th>
			<td>${DBDetail.b_date }</td>
			<th scope="row">등급</th>
			<td>${DBDetail.mrank }</td>
		</tr>
		<tr>
			<th scope="row">아이피</th>
			<td>${DBDetail.ip }</td>
			<th scope="row">파일크기</th>
			<td> ${DBDetail.filesize }</td>
			<th scope="row">파일이름</th>
			<td>${DBDetail.filename }</td>			
		</tr>
		<tr>
		<td colspan="6" class="cont">내용 : ${DBDetail.content }</td>
		</tr>	
	</tbody>
	</table>		

<form class="viewForm" method="post">
			<input type="hidden" name="bnum" value="${DBDetail.bnum }" />
			<button type="button" onclick="onModify()" class="btn btn-primary">수정</button>
			<button type="button" onclick="onList()" class="btn btn-primary">목록</button>
		</form>	
		
</body>
<script type="text/javascript">
	var onModify = function(){
		var form = $('.viewForm')[0];
		form.action = 'jspUpdateForm.do';
		form.submit();
	};
	
	var onList = function(){
		location.href='jspMain.do';
	};
</script>
</html>