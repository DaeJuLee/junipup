<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
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
</head>
<body>
	<table id="wrap">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><div class="tab_list m1" style="height: 112px;">
						<ul>
							<li class="m1"><a href="#"><span>1행1열</span></a>
								<ul>
									<li>› <a href="#">1행1열</a></li>
									<li>› <a href="#">1행1열</a></li>
									<li>› <a href="#">1행1열</a></li>
									<li>› <a href="#">1행1열</a></li>
									<li>› <a href="#">1행1열</a></li>
									
								</ul></li>
							<li class="m2"><a href="#"><span>메인테스트</span></a>
								<ul>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>

								</ul></li>
							<li class="m3"><a href="#"><span>메인테스트</span></a>
								<ul>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									
								</ul></li>
						</ul>
					</div>
					</div></td>
				<td><div class="one_row_two_column">
						<div class="tab_list m1" style="height: 112px;">
							<ul>
								<li class="m1"><a href="#"><span>1행2열</span></a>
									<ul>
										<li>› <a href="#">1행2열</a></li>
										<li>› <a href="#">1행2열</a></li>
										<li>› <a href="#">1행2열</a></li>
										<li>› <a href="#">1행2열</a></li>
										<li>› <a href="#">1행2열</a></li>
										
									</ul></li>
								<li class="m2"><a href="#"><span>메인테스트</span></a>
									<ul>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										
									</ul></li>
								<li class="m3"><a href="#"><span>메인테스트</span></a>
									<ul>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										
									</ul></li>
							</ul>
						</div></td>
			</tr>

			<tr>
				<td><div class="tab_list m1" style="height: 112px;">
						<ul>
							<li class="m1"><a href="#"><span>2행1열</span></a>
								<ul>
									<li>› <a href="#">2행1열</a></li>
									<li>› <a href="#">2행1열</a></li>
									<li>› <a href="#">2행1열</a></li>
									<li>› <a href="#">2행1열</a></li>
									<li>› <a href="#">2행1열</a></li>
									
								</ul></li>
							<li class="m2"><a href="#"><span>메인테스트</span></a>
								<ul>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									
								</ul></li>
							<li class="m3"><a href="#"><span>메인테스트</span></a>
								<ul>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									<li>› <a href="#">메인테스트</a></li>
									
								</ul></li>
						</ul>
					</div>
					</div></td>
				<td><div class="one_row_two_column">
						<div class="tab_list m1" style="height: 112px;">
							<ul>
								<li class="m1"><a href="#"><span>1행2열</span></a>
									<ul>
										<li>› <a href="#">2행2열</a></li>
										<li>› <a href="#">2행2열</a></li>
										<li>› <a href="#">2행2열</a></li>
										<li>› <a href="#">2행2열</a></li>
										<li>› <a href="#">2행2열</a></li>
										
									</ul></li>
								<li class="m2"><a href="#"><span>메인테스트</span></a>
									<ul>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										
									</ul></li>
								<li class="m3"><a href="#"><span>메인테스트</span></a>
									<ul>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										<li>› <a href="#">메인테스트</a></li>
										
									</ul></li>
							</ul>
						</div></td>
			</tr>

		</tbody>
	</table>
	
	<div id="rightBanner">
		<div>
			<!-- <table width="100%" height="600" border="1"> -->
			<table class="spaceBanner">
				<tr><td>응?</td></tr>
			</table>
		</div>
	</div>
	
	<div id = "footer">
		
	</div>


</body>
</html>