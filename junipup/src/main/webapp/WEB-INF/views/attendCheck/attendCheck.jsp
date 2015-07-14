<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

function init(){
	var year = ${attendCheck.year};
	var month = ${attendCheck.month};
	var day = ${attendCheck.day};
	var startDay = ${attendCheck.startDay};
	var endDay = ${attendCheck.endDay};
	var currentDay = ${attendCheck.currentDay};
	var newLine = ${attendCheck.newLine};
	var str = "";
	
	str += "<table class='calendar_check'><tr class='weekday'><td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>";
	str += "<tr class='date'>"
	for(var i = 1; i <= currentDay ; i++){
		str += "<td>&nbsp</td>";
		newLine++;
	}
	
	for(var i = 1; i <= endDay ; i++){
		str += "<td>" + i + "</td>";
		newLine++;
		if(newLine == 7){
			str += "</tr>";
			newLine = 0;
			str += "<tr class='date'>";
		}
	}
	for(var i = 1; i <= (7-newLine); i++){
		str += "<td>&nbsp</td>";
	}
	str += "</tr></table>";
	
	document.getElementById("calendar").innerHTML = str;
			
}
/* 이전 */
/* $.ajax({
			url:"attendCheckChange.do",
			type: "POST",
			dataType: "text",
			data: {
				"month" : beformMonth,
				"year" : year
			},
		    success : function(responseObject, status){
		    	alert("성공");
		    	alert(responseObject);
		    	alert("달력 바뀌냐??");
		    },
			error:function(request, status, error){
				alert("code:"+ request.status + "\n" + "error:"+error);
			}
		}); */
$(function(){
	var month = "<h2>"+${attendCheck.month}+"</h2>";
	$("#month_value_num").html(month);
	var beforeMonth = ${attendCheck.month} - 1;
	var year = ${attendCheck.year};
	if(beforeMonth == 0){
		beforeMonth=12;
		year = year-1;
	}
	$("#before_button").click(function(){
		$.getJSON("attendCheckChange.do", function(data) {
			alert(data.foo);	
		
		});
		
	});
});
/* 다음 */
$(function(){
	
});

</script>
<body onload="init()">
<div class="calendar_year_month">
	<button type="button" id="before_button">이전</button>
	<h2 id="month_value_num"></h2>
	<button type="button" id="after_button">다음</button>
</div>

<div id="calendar" class="calendar">

</div>
</body>
</html>