<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>
<%@ include file="../mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/attendCheck.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

var chulstate=1;

function init(){
	var year = ${attendCheck.year};
	var month = ${attendCheck.month};
	var day = ${attendCheck.day};
	var startDay = ${attendCheck.startDay};
	var endDay = ${attendCheck.endDay};
	var currentDay = ${attendCheck.currentDay};
	var newLine = ${attendCheck.newLine};
	/* var attend = '${attendCheck.attend}'; */
	/* alert(attend); */
	/* alert('day : ' + day); */
	/* alert(chulstate); */
	var str = "";
	var monthHtml = ${attendCheck.month};
	$("#month_value_num").html(monthHtml);
	str += "<table class='calendar_check'><tr class='weekday'><td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>";
	str += "<tr class='date'>";
	for(var i = 1; i <= currentDay ; i++){
		str += "<td>&nbsp</td>";
		newLine++;
	}
	
	for(var i = 1; i <= endDay ; i++){
		/* str += "<td>" + i + "</td>"; */
		<c:set value='${attendCheck.attend}' var='check'/>
		var check = '${check}';
		var img = check.substring(i-1,i);
		/* alert(img); */
		str += "<td><table class='day'><tr class='checkday'><td align='center'>" + i + "</td></tr>";
		str += "<tr class='checkimg'><td id='input"+i+"'>";
		if(img == 1){
			str += "<img src='images/GGang.JPG'/>";
		}
		else if(img == 0 && i < day){
			str += "<img src='images/sorry.JPG'/>";
		}
		str += "</td></tr>";
		str += "</table></td>";
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
/* 이전 *//* 로그인했을때 mainHeader2의 USER_KEY와 연결 */
$(function(){
	/* alert("init"); */
	var state = 1;
	var minusMonth = 1;
	var minusYear = 1;
	/* alert(state); */
	var yearyear;
	var monthmonth=13;
	var nickname='${USER_KEY.nickname}';
	/* alert(nickname); */
	$("#before_button").click(function(){
		/* alert(chulstate); */
		var year1 = ${attendCheck.year};
		var month1 = ${attendCheck.month};
		/* alert("상태  : "+state); */
		yearyear = year1;
		
		if(monthmonth==1){
			alert("올해만 확인할 수 있습니다.");
			return false;
		}
		if(monthmonth > month1){
			monthmonth = month1 - 1;
		}else{
			monthmonth = monthmonth - 1;
		}
		
		/* monthmonth=monthmonth-minusMonth; */
		
		if(state==0 && (yearyear < year1 || monthmonth < month1)){
			/* alert("if"); */			
		}else{
			/* alert("else"); */
			state = 0;
			/* alert(state); */
		}
		
		/* alert("조건문 나와서 바뀐 월 : " + monthmonth); */
		
		$.getJSON("attendCheckChangeBefore.do",{year: yearyear, month: monthmonth, nickname: nickname}) 
			.done(function(data) {
				if(data.enable == 'no'){
					alert("가입일 전달의 내역을 확인하실 수 없습니다.");
					monthmonth = monthmonth + 1;
					return false;
				}
				
				var str = "";
				var newLine = data.newLine;
				var monthHtml = data.month;
				$("#month_value_num").html(monthHtml);
				str += "<table class='calendar_check'><tr class='weekday'><td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>";
				str += "<tr class='date'>";
				for(var i = 1; i <= data.currentDay ; i++){
					str += "<td>&nbsp</td>";
					newLine++;
				}
				
				for(var i = 1; i <= data.endDay ; i++){
					/* str += "<td>" + i + "</td>"; */
					var check = data.attend;
					/* alert(check); */
					var img = check.substring(i-1,i);
					/* alert(img); */
					str += "<td><table class='day'><tr class='checkday'><td align='center'>" + i + "</td></tr>";
					str += "<tr class='checkimg'><td>";
					if(img == 1){
						str += "<img src='images/GGang.JPG'/>";
					}
					else{
						str += "<img src='images/sorry.JPG'/>"
					}
					str += "</td></tr>";
					str += "</table></td>";
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
			});
	});
	
	$("#after_button").click(function(){
		/* alert(chulstate); */
		if(state==1){
			alert("현재달 까지만 확인할 수 있습니다.");
			return false;
		}
		/* alert("상태  : "+state); */
		var month1 = ${attendCheck.month};
		
		if(monthmonth==month1){
			alert("현재달 까지만 확인할 수 있습니다.");
			return false;
		}
		monthmonth=monthmonth+1;
		
		/* alert("조건문 나와서 바뀐 월 : " + monthmonth); */
		
		$.getJSON("attendCheckChangeAfter.do",{year: yearyear, month: monthmonth, nickname: nickname}) 
			.done(function(data) {
				var str = "";
				var newLine = data.newLine;
				var monthHtml = data.month;
				$("#month_value_num").html(monthHtml);
				str += "<table class='calendar_check'><tr class='weekday'><td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td></tr>";
				str += "<tr class='date'>";
				for(var i = 1; i <= data.currentDay ; i++){
					str += "<td>&nbsp</td>";
					newLine++;
				}
				/* alert("현재달 : " + month1); */
				/* alert("변한달 : " + monthmonth); */
				for(var i = 1; i <= data.endDay ; i++){
					var check = data.attend;
					/* alert(check); */
					var img = check.substring(i-1,i);
					/* alert(img); */
					str += "<td><table class='day'><tr class='checkday'><td align='center'>" + i + "</td></tr>";
					str += "<tr class='checkimg'><td>";
					if(img == 1){
						str += "<img src='images/GGang.JPG'/>";
					}
					else if(img == 0 && i < data.day && month1 == monthmonth){
						str += "<img src='images/sorry.JPG'/>";
					}
					str += "</td></tr>";
					str += "</table></td>";
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
			});
	});
});

$(function(){
	$("#attend").click(function(){
		var year = ${attendCheck.year}
		var month = ${attendCheck.month};
		var day = ${attendCheck.day};
		var img = document.createElement('img');
		img.src = 'images/GGang.JPG';
		var nickname = '${USER_KEY.nickname}';
		/* alert("클릭"); */
		chulstate = 0;
		$.getJSON("attend.do", {"chulsuk": "1", "year": year, "month": month, "day": day, "nickname": nickname})
			.done(function(data){
				if(data.success == 1){
					alert("출석을 하셨습니다.");	
					document.getElementById('input'+data.day).appendChild(img);
				}else{
					alert("이미 출석을 하셨습니다.");
				}
			});
	});
});

</script>
<body onload="init()">
<div class="calendar_year_month" style="margin-left:100px;">
	<div class="calendar_year_month_left">
		<button type="button" id="before_button">이전</button>
		<h2 id="month_value_num"></h2>
		<button type="button" id="after_button">다음</button>
	</div>
	<div class="calendar_year_month_right">
		<button id="attend"><img src='images/attendButton.JPG'/></button>
	</div>
	 
</div>

<div id="calendar" class="calendar" style="margin-left:100px;">

</div>
</body><%@ include file="../footer.jsp" %>
</html>