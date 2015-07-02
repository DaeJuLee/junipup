<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
 
    <script>
        $(document).ready(function(){
            var tbl = $("#checkboxTestTbl");
             
            // 테이블 헤더에 있는 checkbox 클릭시
            $(":checkbox:first", tbl).click(function(){
                // 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
                if( $(this).is(":checked") ){
                    $(":checkbox", tbl).attr("checked", "checked");
                }
                else{
                    $(":checkbox", tbl).removeAttr("checked");
                }
 
                // 모든 체크박스에 change 이벤트 발생시키기                
                $(":checkbox", tbl).trigger("change");
            });
             
            // 헤더에 있는 체크박스외 다른 체크박스 클릭시
            $(":checkbox:not(:first)", tbl).click(function(){
                var allCnt = $(":checkbox:not(:first)", tbl).length;
                var checkedCnt = $(":checkbox:not(:first)", tbl).filter(":checked").length;
                 
                // 전체 체크박스 갯수와 현재 체크된 체크박스 갯수를 비교해서 헤더에 있는 체크박스 체크할지 말지 판단
                if( allCnt==checkedCnt ){
                    $(":checkbox:first", tbl).attr("checked", "checked");
                }
                else{
                    $(":checkbox:first", tbl).removeAttr("checked");
                }
            }).change(function(){
                if( $(this).is(":checked") ){
                    // 체크박스의 부모 > 부모 니까 tr 이 되고 tr 에 selected 라는 class 를 추가한다.
                    $(this).parent().parent().addClass("selected");
                }
                else{
                    $(this).parent().parent().removeClass("selected");
                }
            });
        });
    </script>
     
    <style>
        #checkboxTestTbl {border-collapse: collapse;}
        /* #checkboxTestTbl td, #checkboxTestTbl th{padding:20px;} */
        #checkboxTestTbl th{background-color: #ccc;}
         
        #checkboxTestTbl tr.selected{background-color: yellow;color: black;}
    </style>
</head>
 
<body>
    <table id="checkboxTestTbl" border="1px">
        <caption>가입 명단</caption>
        <colgroup>
            <col width="40px;"/>
            <col width="200px;"/>
            <col width="100px;"/>
        </colgroup>
        <tr>
            <th><input type="checkbox"/></th>
            <th>닉네임</th>
			<th>사진</th>
			<th>아이디</th>
			<th>암호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>이메일</th>
			<th>등급</th>
			<th>사용포인트</th>
			<th>최대포인트</th>
			<th>날짜</th>
			<th>출석도장</th>
        </tr>
        <c:forEach var="admin" items="${adminMain }">
        <tr>
            <td><input type="checkbox" /></td>
            <td>${admin.nickname }</td>
			<td>${admin.photo }</td>
			<td>${admin.id }</td>
			<td>${admin.password }</td>
			<td>${admin.name }</td>
			<td>${admin.phoneNumber }</td>
			<td>${admin.email }</td>
			<td>${admin.mrank }</td>
			<td>${admin.usePoint }</td>
			<td>${admin.maxPoint }</td>
			<td>${admin.regDate}</td>
			<td>${admin.loginDate}</td>	
        </tr>
        
        <c:set var="num" value="${num-1 }" /> 
	</c:forEach>
    </table>
    <c:if test="${pg.startPage > pg.pageBlock}">
		<a href="adminMain.do?currentPage=${pg.startPage-pg.pageBlock }">[이전]</a>
	</c:if>

	<c:forEach var="pg" begin="${pg.startPage }" end="${pg.endPage }"
		step="1">
		<a href="adminMain.do?currentPage=${pg }">[${pg }]</a>
	</c:forEach>

	<c:if test="${pg.endPage < pg.totalPage }">
		<a href="adminMain.do?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
	</c:if>
	   
</body>
</html>