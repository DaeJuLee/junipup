<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	// 무한 스크롤 부분
	$(document).ready(function () {
	// 스크롤 이벤트 발생 시
	$(window).scroll(function () { 
	// 필요한 변수를 구합니다. 
	var scrollHeight = $(window).scrollTop() + $(window).height(); 
	var documentHeight = $(document).height();
	// 스크롤의 높이와 문서의 높이가 같을 때
	if (scrollHeight == documentHeight) { 
		for (var i = 0; i < 10; i++) {
		$('<h1>Infinity Scroll</h1>').appendTo('body');
			}
				}
					});
						});
	// 테스트를 위해 내부에 공간을 채워둡니다.
	$(document).ready(function () {
		for (var i = 0; i < 20; i++) { 
			$('<h1>Infinity Scroll</h1>').appendTo('body');
		}
	});
</script>
<body>

</body>
</html>