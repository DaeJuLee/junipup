<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
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
		<a href="main.jsp"><img src="images/junipup${loginUser.mRank }.jpg" width="100px"></a>
	</div>
		<p>
		<c:choose>
		<c:when test="${not empty loginUser}">
			<font color="green"><c:out value="${loginUser.mName}" />님, 환영합니다. | </font> 
			<c:choose>
				<c:when test="${loginUser.mId == 'master' }">
					<a href="adminMain.html">관리자 페이지</a>
				</c:when>
				<c:when test="${loginUser.mId != 'master' }">
					<a href="mypage.html?mId=${loginUser.mId }">마이 페이지</a>
				</c:when>
			</c:choose>
		</c:when>
		<c:otherwise>
			<div id="text">
			<font>당신을 환영합니다.</font>
			</div>
		</c:otherwise>
		</c:choose>		
		</p>
	</div>
</div>
	<nav>
		<div class="wrapper">
			<ul id="menu" class="clearfix">
				<li><a href="#">Home</a></li>
				<!-- Database -->
				<li><a href="#">Database</a>
					<ul>
						<li><a href="#">History</a></li>
						<li><a href="#">The Team</a></li>
						<li><a href="#">Our Mission</a></li>
					</ul></li>
					
				<!-- jquery -->
				<li class="jQuery"><a href="#">jQuery</a>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">YouTube</a></li>
						<li><a href="#">Instagram</a></li>
						<li><a href="#"></a></li>
					</ul></li>
				<!-- jsp -->
				<li class="Jsp"><a href="#">Jsp</a>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">YouTube</a></li>
						<li><a href="#">Instagram</a></li>
						<li><a href="#"></a></li>
					</ul></li>
				<li class="Java"><a href="#">Java</a>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">YouTube</a></li>
						<li><a href="#">Instagram</a></li>
						<li><a href="#"></a></li>
					</ul></li>

				<li class="Android"><a href="#">Android</a>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">YouTube</a></li>
						<li><a href="#">Instagram</a></li>
						<li><a href="#"></a></li>
					</ul></li>
				<li class="Html5"><a href="#">Html5</a>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">YouTube</a></li>
						<li><a href="#">Instagram</a></li>
						<li><a href="#"></a></li>
					</ul></li>
				<li class="Login"><a href="login.jsp">Login</a>
				</li>

			</ul><!-- id="menu" 끝 -->
		</div><!-- class="wrapper" 끝 -->
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