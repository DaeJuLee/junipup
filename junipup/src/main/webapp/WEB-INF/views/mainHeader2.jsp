<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html">
<title>주니펍</title>
<meta name="author" content="Jake Rocheleau">
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.js"></script> -->
</head>
<body>
	<div id="wrab">
		<div id="h2">
			<div align="center">
				<a href="main.do"><img src="images/junipup.jpg" width="100px"></a>
			</div>
		</div>
		
		<div class="login_div">
			<div class="inputUser">
				<p>
				<c:choose>
					<c:when test="${not empty USER_KEY}">
						<h2><c:out value="${USER_KEY.nickname}" />님,
							환영합니다. |</h2> 
						<c:choose>
							<c:when test="${USER_KEY.nickname == 'master' }">
								<a href="adminForm.do?id=${USER_KEY.id }">관리자 페이지</a>
				 			</c:when>
							<c:when test="${USER_KEY.nickname != 'master' }">
								<a href="updateForm.do?id=${USER_KEY.email }">마이 페이지</a>
							</c:when>
						</c:choose>
					</c:when>
					<c:otherwise>
						<div id="text">
							
						</div>
					</c:otherwise>
				</c:choose>
			</p>
			</div>
			<div class="information">
				<table class="login_table">
					<col width="40px"><col width="160px">
					<tr height="40px"><td>${USER_KEY.mrank}</td><td>${USER_KEY.nickname }</td></tr>
					<tr height="40px"><td>POINT</td><td>${USER_KEY.usePoint }</td></tr>
				</table>
			</div>
		</div>   
	</div>
	<!-- wrab 끝 -->
	<nav>
		<div class="wrapper">
			<ul id="menu" class="clearfix">
				<li><a href="main.do">Notice</a></li>
				<!-- Database -->
				<li><a href="DBMain.do">Database</a>
					<ul>
						<li><a href="DBMain.do?category=기초익히기">기초익히기</a></li>
						<li><a href="DBMain.do?category=등급올리기">등급올리기</a></li>
						<li><a href="DBMain.do?category=질문게시판">질문게시판</a></li>
						<li><a href="DBMain.do?category=응용게시판">응용게시판</a></li>
					</ul></li>

				<!-- jquery -->
				<li class="jQuery"><a href="jQueryMain.do">jQuery</a>
					<ul>
						<li><a href="jQueryMain.do?category=기초익히기">기초익히기</a></li>
						<li><a href="jQueryMain.do?category=등급올리기">등급올리기</a></li>
						<li><a href="jQueryMain.do?category=질문게시판">질문게시판</a></li>
						<li><a href="jQueryMain.do?category=응용게시판">응용게시판</a></li>
					</ul></li>
				<!-- jsp -->
				<li class="Jsp"><a href="jspMain.do">Jsp</a>
					<ul>
						<li><a href="jspMain.do?category=기초익히기">기초익히기</a></li>
						<li><a href="jspMain.do?category=등급올리기">등급올리기</a></li>
						<li><a href="jspMain.do?category=질문게시판">질문게시판</a></li>
						<li><a href="jspMain.do?category=응용게시판">응용게시판</a></li>
					</ul></li>
				<li class="Java"><a href="javaMain.do">Java</a>
					<ul>
						<li><a href="javaMain.do?category=기초익히기">기초익히기</a></li>
						<li><a href="javaMain.do?category=등급올리기">등급올리기</a></li>
						<li><a href="javaMain.do?category=질문게시판">질문게시판</a></li>
						<li><a href="javaMain.do?category=응용게시판">응용게시판</a></li>
					</ul></li>

				<li class="Android"><a href="androidMain.do">Android</a> <!-- <li class="Android"><a href="#">Android</a> -->
					<ul>
						<li><a href="androidMain.do?category=기초익히기">기초익히기</a></li>
						<li><a href="androidMain.do?category=등급올리기">등급올리기</a></li>
						<li><a href="androidMain.do?category=질문게시판">질문게시판</a></li>
						<li><a href="androidMain.do?category=응용게시판">응용게시판</a></li>
					</ul></li>
				<li class="Html5"><a href="html5Main.do">Html5</a>
					<ul>
						<li><a href="html5Main.do?category=기초익히기">기초익히기</a></li>
						<li><a href="html5Main.do?category=등급올리기">등급올리기</a></li>
						<li><a href="html5Main.do?category=질문게시판">질문게시판</a></li>
						<li><a href="html5Main.do?category=응용게시판">응용게시판</a></li>
					</ul></li>
				<li class="QNA"><a href="#">QnA</a></li>
				<li class="Check"><a href="#">출석체크!</a></li>
				<li class="Login"><a href="login.do">Login</a></li>
	
			</ul>
			<!-- id="menu" 끝 -->
		</div>
		<!-- class="wrapper" 끝 -->
	</nav>
	<script type="text/javascript">
		$(function() {
			$('a[href="#"]').on('click', function(e) {
				e.preventDefault();
			});

			$('#menu > li').on('mouseover', function(e) {
				$(this).find("ul:first").show();
				$(this).find('> a').addClass('active');
			}).on('mouseout', function(e) {
				$(this).find("ul:first").hide();
				$(this).find('> a').removeClass('active');
			});

			$('#menu li li').on('mouseover', function(e) {
				if ($(this).has('ul').length) {
					$(this).parent().addClass('expanded');
				}
				$('ul:first', this).parent().find('> a').addClass('active');
				$('ul:first', this).show();
			}).on('mouseout', function(e) {
				$(this).parent().removeClass('expanded');
				$('ul:first', this).parent().find('> a').removeClass('active');
				$('ul:first', this).hide();
			});
		});
	</script>
</body>
</html>
