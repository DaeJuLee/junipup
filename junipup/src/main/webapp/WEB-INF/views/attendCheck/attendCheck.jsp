<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
현재 년도 : ${attendCheck.year }<p>
현재 월 : ${attendCheck.month }<p>
현재 일 : ${attendCheck.day }<p>
어떤 달의 처음 일 수 : ${attendCheck.startDay }<p>
어떤 달의 마지막 일 수 : ${attendCheck.endDay }<p>
어떤 달의 현재 요일 : ${attendCheck.currentDay }<p>
요일 인덱스 체크 : ${attendCheck.newLine }<p>
</body>
</html>