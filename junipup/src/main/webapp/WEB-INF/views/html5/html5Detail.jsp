<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/table.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<style type="text/css">  
	.contents-wrap{margin:30px 0 0 0;min-height: 500px;}
	.contents{ margin: 60px 0 0 0;}
	.recode-wrap{text-align: right; color: #888;}
	.hit-wrap{color:#888; margin: 10px 0;}
	.viewForm{margin: 20px 0 0 0;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container ">
<div class="contents panel panel-success">
<table cellspacing="0" border="1" class="table" align="center">
	<colgroup>
	<col width="80"><col><col width="80">
	<col width="150"><col width="80"><col width="150">
	</colgroup>
	<thead>
		<tr>
			<th scope="row">카테고리</th>
			<td>${html5Detail.category }</td>
			<th scope="row">제목</th>
			<td colspan="3">
			<div class="title-wrap panel-heading">
				${html5Detail.title }
			</div>	
			</td>
		</tr>
	</thead>
	<tbody> 
		<tr>
			<th scope="row">작성자</th>
			<td>${html5Detail.nickname }</td>
			<th scope="row">작성일</th>
			<td>${html5Detail.b_date }</td>
			<th scope="row">등급</th>
			<td>${html5Detail.mrank }</td>
		</tr>
		<tr>
			<th scope="row">아이피</th>
			<td>${html5Detail.ip }</td>
			<th scope="row">파일크기</th>
			<td> ${html5Detail.filesize }</td>
			<th scope="row">파일이름</th>
			<td>${html5Detail.filename }</td>			
		</tr>
		<tr>
		<td colspan="6">
		<div class="contents-wrap">
		내용 : ${html5Detail.content }
		</div>
		</td>
		</tr>	
	</tbody>
	</table>		
	</div>
	<form class="viewForm" method="post">
			<input type="hidden" name="bnum" value="${html5Detail.bnum }" />
			<button type="button" onclick="onList()" class="btn btn-primary">목록</button>
			<c:choose>
			<c:when test="${empty USER_KEY}">					
				<button type="button" class="btn btn-primary"  onclick="location.href='login.do'">수정</button>					
			</c:when>				
			<c:otherwise>
				<c:choose>							
					<c:when test="${USER_KEY.nickname == html5Detail.nickname  }">
						<button type="button" onclick="onModify()" class="btn btn-primary">수정</button>										
					</c:when>
					<c:when test="${USER_KEY.nickname !=  html5Detail.nickname }">
					</c:when>					
				</c:choose>							
			</c:otherwise>		
			</c:choose>
			
			<c:choose>
			<c:when test="${empty USER_KEY}">					
				<button type="button" class="btn btn-primary"  onclick="location.href='login.do'">삭제</button>					
			</c:when>				
			<c:otherwise>
				<c:choose>							
					<c:when test="${USER_KEY.nickname == html5Detail.nickname  }">
						<button type="button" onclick="onDelete()" class="btn btn-primary">삭제</button>
					</c:when>
					<c:when test="${USER_KEY.nickname !=  html5Detail.nickname }">
					</c:when>					
				</c:choose>							
			</c:otherwise>		
			</c:choose>				
	
	</form>	
</div>
<%-- <input type="button" value="목록보기" 
		onclick="location.href='jspMain.do?=${jspDetail}'" class="button">
<input type="button" value="수정" 
		onclick="location.href='jspUpdateForm.do?bnum=${jspDetail.bnum }'" class="button">
<input type="button" value="삭제" 
		onclick="location.href='jspDeleteCheck.do?bnum=${jspDetail.bnum}'" class="button"> --%>
		
</body><%@ include file="../footer.jsp" %>

<script type="text/javascript">
	var onModify = function(){
		var form = $('.viewForm')[0];
		form.action = 'html5UpdateForm.do';
		form.submit();
	};
	
	var onList = function(){
		location.href='html5Main.do';
	};
	
	var onDelete = function(){	
		var form = $('.viewForm')[0];
		form.action = 'html5DeleteCheck.do';
		form.submit();
	};
</script>
</html>