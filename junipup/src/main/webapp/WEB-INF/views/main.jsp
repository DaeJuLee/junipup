<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" media="all" href="css/prac.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<!--스타일시트 추가-->
<link rel="stylesheet" href="css/style.css">
<!--jQuery 라이브러리 추가-->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!--jQuery 플러그인 추가-->
<script src="js/jquery.banner.js"></script>
<!--jQuery 플러그인 옵션 설정 추가-->
<script src="js/script.js"></script>
<link rel="stylesheet" href="css/banner.css">
<script type="text/javascript">
	jQuery(function($) {
		var tab = $('.tab_list');
		tab.removeClass('js_off');
		tab.css('height', tab.find('>ul>li>ul:visible').height() + 40);
		function onSelectTab() {
			var t = $(this);
			var myClass = t.parent('li').attr('class');
			t.parents('.tab_list:first').attr('class', 'tab_list ' + myClass);
			tab.css('height', t.next('ul').height() + 40);
		}
		tab.find('>ul>li>a').click(onSelectTab).focus(onSelectTab);
	});
</script>
<script type="text/javascript">
	var stmnLEFT = 10; // 오른쪽 여백 
	var stmnGAP1 = 0; // 위쪽 여백 
	var stmnGAP2 = 150; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
	var stmnBASE = 150; // 스크롤 시작위치 
	var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
	var stmnScrollSpeed = 10; //스크롤 속도 (클수록 느림)
	var stmnTimer;

	function RefreshStaticMenu() {
		var stmnStartPoint, stmnEndPoint;
		stmnStartPoint = parseInt(
				document.getElementById('STATICMENU').style.top, 10);
		stmnEndPoint = Math.max(document.documentElement.scrollTop,
				document.body.scrollTop)
				+ stmnGAP2;
		if (stmnEndPoint < stmnGAP1)
			stmnEndPoint = stmnGAP1;
		if (stmnStartPoint != stmnEndPoint) {
			stmnScrollAmount = Math.ceil(Math
					.abs(stmnEndPoint - stmnStartPoint) / 15);
			document.getElementById('STATICMENU').style.top = parseInt(document
					.getElementById('STATICMENU').style.top, 10)
					+ ((stmnEndPoint < stmnStartPoint) ? -stmnScrollAmount
							: stmnScrollAmount) + 'px';
			stmnRefreshTimer = stmnScrollSpeed;
		}
		stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed);
	}
	function InitializeStaticMenu() {
		document.getElementById('STATICMENU').style.right = stmnLEFT + 'px'; //처음에 오른쪽에 위치. left로 바꿔도.
		document.getElementById('STATICMENU').style.top = document.body.scrollTop
				+ stmnBASE + 'px';
		RefreshStaticMenu();
	}
</script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		var tab = $('.left11');
		tab.removeClass('js_off');
		tab.css('height', tab.find('>ul>li>ul:visible').height() + 40);
		function onSelectTab() {
			var t = $(this);
			var myClass = t.parent('li').attr('class');
			t.parents('.left11:first').attr('class', 'left11 ' + myClass);
			tab.css('height', t.next('ul').height());
		}
		tab.find('>ul>li>a').click(onSelectTab).focus(onSelectTab);
	});
</script>

<style type="text/css">

#STATICMENU {
	margin: 0pt;
	padding: 0pt;
	position: absolute;
	right: 0px;
	top: 0px;
}
</style>


</head>

<body onload="InitializeStaticMenu();">
	
	<div class="center">

		<div class="left_center">
			<div class="left_center1" id="image_list_2" align="center">
				<div class="clsBannerScreen">
					<div class="images" style="display: block">
						<img src="images/google.jpg">
					</div>
					<div class="images">
						<img src="images/daum.jpg">
					</div>
					<div class="images">
						<img src="images/naver.jpg">
					</div>
					<div class="images">
						<img src="images/nate.jpg">
					</div>
					<div class="images">
						<img src="images/yahoo.jpg">
					</div>
				</div>

				<ul class="clsBannerButton" id="label_2">
					<li class="fir">구글<br></li>
					<li>다음<br></li>
					<li>네이버<br></li>
					<li>네이트<br></li>
					<li>야후<br></li>
				</ul>
			</div>

			<div class="left_center2">
				<!-- 공지사항  -->
				<div class="left11 m1">
					<ul>
						<li class="m1"><a href="#">Notice</a>
							<ul>
								<li></li>
								
							</ul></li>

						<li class="m2"><a href="#">Database</a>
							<ul>
								<c:forEach items="${DB }" var="db">
									<li>
										<table>
											<col width="120px">
											<col width="50px">
											<col width="290px">
											<tr height="20px">
												<td calss="cate_value">${db.category }</td>
												<td class="cate">제목 : </td>
												<td><a href="DBDetail.do?bnum=${db.bnum}">${db.title }</a></td>
											</tr>
										</table>
									<li>
								</c:forEach>
							</ul></li>
					</ul>
				</div>
				<!-- 공지사항  -->

				<!-- 공지사항  -->
				<div class="left11 m1">
					<ul>
						<li class="m1"><a href="#">jQuery</a>
							<ul>
								<c:forEach items="${jQuery }" var="jQuery">
									<li>
										<table>
											
											<col width="120px">
											<col width="50px">
											<col width="290px">
											<tr height="20px">
												
												<td calss="cate_value">${jQuery.category }</td>
												<td class="cate">제목 : </td>
												<td><a href="DBDetail.do?bnum=${jQuery.bnum}">${jQuery.title }</a></td>
											</tr>
										</table>
									<li>
								</c:forEach>
							</ul></li>

						<li class="m2"><a href="#">Jsp</a>
							<ul>
								<c:forEach items="${Jsp }" var="Jsp">
									<li>
										<table>
											
											<col width="120px">
											<col width="50px">
											<col width="290px">
											<tr height="20px">
												
												<td calss="cate_value">${Jsp.category }</td>
												<td class="cate">제목 : </td>
												<td><a href="DBDetail.do?bnum=${Jsp.bnum}">${Jsp.title }</a></td>
											</tr>
										</table>
									<li>
								</c:forEach>
							</ul></li>
					</ul>
				</div>
				<!-- 공지사항  -->
			</div>

			<div class="left_center3">
				<!-- 공지사항  -->
				<div class="left11 m1">
					<ul>
						<li class="m1"><a href="#">Java</a>
							<ul>
								<c:forEach items="${Java }" var="Java">
									<li>
										<table>
											
											<col width="120px">
											<col width="50px">
											<col width="290px">
											<tr height="20px">
												
												<td calss="cate_value">${Java.category }</td>
												<td class="cate">제목 : </td>
												<td><a href="DBDetail.do?bnum=${Java.bnum}">${Java.title }</a></td>
											</tr>
										</table>
									<li>
								</c:forEach>
							</ul></li>

						<li class="m2"><a href="#">Android</a>
							<ul>
								<c:forEach items="${Android }" var="Android">
									<li>
										<table>
											
											<col width="120px">
											<col width="50px">
											<col width="290px">
											<tr height="20px">
												
												<td calss="cate_value">${Android.category }</td>
												<td class="cate">제목 : </td>
												<td><a href="DBDetail.do?bnum=${Android.bnum}">${Android.title }</a></td>
											</tr>
										</table>
									<li>
								</c:forEach>
							</ul></li>
					</ul>
				</div>
				<!-- 공지사항  -->

				<!-- 공지사항  -->
				<div class="left11 m1">
					<ul>
						<li class="m1"><a href="#">Html5</a>
							<ul>
								<c:forEach items="${Html5 }" var="Html5">
									<li>
										<table>
											
											<col width="120px">
											<col width="50px">
											<col width="290px">
											<tr height="20px">
												
												<td calss="cate_value">${Html5.category }</td>
												<td class="cate">제목 : </td>
												<td><a href="DBDetail.do?bnum=${Html5.bnum}">${Html5.title }</a></td>
											</tr>
										</table>
									<li>
								</c:forEach>
							</ul></li>

						<li class="m2"><a href="#">QnA</a>
							<ul>
								<li>메뉴</li>
								<li>메뉴</li>
								<li>메뉴</li>
								<li>메뉴</li>
								<li>메뉴</li>
							</ul></li>
					</ul>
				</div>
				<!-- 공지사항  -->
			</div>
		</div>

		<div class="right_center">
			<div class="banner">
				<table border="1">
					<col width="350px">
					<tr height="130px">
						<td class="wow">배너광고를 구합니다~</td>
					<tr>
				</table>
			</div>
			<div class="banner">
				<table border="1">
					<col width="350px">
					<tr height="130px">
						<td class="wow">배너광고를 구합니다~</td>
					<tr>
				</table>
			</div>
			<div class="banner">
				<table border="1">
					<col width="350px">
					<tr height="130px">
						<td class="wow">배너광고를 구합니다~</td>
					<tr>
				</table>
			</div>
			<div class="banner">
				<table border="1">
					<col width="350px">
					<tr height="130px">
						<td class="wow">배너광고를 구합니다~</td>
					<tr>
				</table>
			</div>
		</div>

	</div>




	</div>


</body>
</html>