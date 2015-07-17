<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="css/adminMenu.css">
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/pagination.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/tab.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
	function go_pop(recever) {
	
			window.open(
						"mailSendForm.do?recever="+recever,
						"new",
						"width=500, height=320, resizable=no, scrollbars=no, status=no, location=no, directories=no; left=450; top=250"+
						"background='yellow'");
	}


</script>
      
    <style>
        #checkboxTestTbl {border-collapse: collapse;}
        #checkboxTestTbl th{background-color: #ccc;}        
        #checkboxTestTbl tr.selected{background-color: yellow;color: black;}
    </style>
</head>
 
<body> 
	<div id='adminMenu'>
	<ul>
	   <li><a href='adminMain.do?nickname=${USER_KEY.nickname }'><span>관리자페이지</span></a></li>
	   <li class='active has-sub'><a href='messageCheck.do?nickname=${USER_KEY.nickname }'><span>쪽지함</span></a>
	      <ul>
	         <li class='has-sub'><a href='sendingmessage.do?nickname=${USER_KEY.nickname }'><span>보낸쪽지함</span></a>
	            
	    </li>
	         <li class='has-sub'><a href='recevingmessage.do?nickname=${USER_KEY.nickname }'><span>받은쪽지함</span></a>
	   </li>
	
	</ul>
	</div>
	
	<div style="padding-left: 20px">
    <!-- <table id="checkboxTestTbl" border="1px" > -->
    <table class="tbl" align="center">
        <caption>가입 명단</caption>
       <colgroup>
            <col width="100px;"/>
            <col width="100px;"/>
            <col width="100px;"/>
        </colgroup> 
        <tr>
            
            <th>닉네임</th>
			<th>사진</th>
			<th>암호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>이메일</th>
			<th>등급</th>
			<th>사용포인트</th>
			<th>최대포인트</th>
			<th>날짜</th>
			<th>출석도장</th>
			<th>삭제</th>
			<th>메일보내기</th>
        </tr>
        <c:forEach var="admin" items="${adminMain }">
        <tr>
            
            <td>${admin.nickname }</td>
			<td>${admin.photo }</td>
			<td>${admin.password }</td>
			<td>${admin.name }</td>
			<td>${admin.phoneNumber }</td>
			<td>${admin.email }</td>
			<td>${admin.mrank }</td>
			<td>${admin.usePoint }</td>
			<td>${admin.maxPoint }</td>
			<td>${admin.regDate}</td>
			<td>${admin.loginDate}</td>
			<td><a href="memberDeleteCheck.do?nickname=${admin.nickname }">삭제하기</a></td>
			<td><button onclick="go_pop('${admin.email}')">메일보내기</button></td>	
        </tr>
        
        <c:set var="num" value="${num-1 }" /> 
	</c:forEach>
    </table>    
   <div class="paginate">
	<c:if test="${pg.startPage > pg.pageBlock}">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage-pg.pageBlock }" class="pre">이전</a> --%>
		<button type="button" class="button" onclick="location.href='adminMain.do?currentPage=${pg.startPage-pg.pageBlock }'">이전</button>		
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }" step="1">
		<a href="adminMain.do?currentPage=${pg }"><span>${pg}</span></a>
	</c:forEach>
	
	<c:if test="${pg.endPage < pg.totalPage }">		
		<%-- <a href="DBMain.do?currentPage=${pg.startPage+pg.pageBlock}" class="next"><img src="http://static.naver.com/common/paginate/btn_page_next.gif" width="57" height="27" alt="다음"></a> --%>
		<button type="button" class="button" onclick="location.href='adminMain.do?currentPage=${pg.startPage+pg.pageBlock}'">다음</button>
	</c:if>
	</div>
	</div>   
	
</body><%@ include file="../footer.jsp" %>
</html>