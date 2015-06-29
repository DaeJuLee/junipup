<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="mainHeader.jsp" %>
<html>
<head>
	<meta charset="utf-8">
	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>연습페이지</title>
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<!-- <link rel="stylesheet" type="text/css" href="css/com.css"> -->
</head>

<body>

	<!-- container -->
	<div id="container">
		<!-- <div class="columnSub"> -->
		<div class="columnRight">
			<ul class="lnb">
				<li>
					<em>링크</em>
					<ul class="lnbSub">
						<li>
							<span class="tape tape1"></span>
							<a href="#"><span class="photo"><img src="images/section1_img1.jpg" alt="" /></span>
							<span class="title"><img src="images/section1_title1.png" alt="꿈꾸는 어린이" /></span>
							<span class="text">좋은책 광고 함<br /> ??</span></a>
						</li>
						<li><a href="#none">연습</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="columnMain">
			<h2>연습</h2>
			<p class="location"><span>연습</span><span>게시판</span></p>
			<div class="contents">
				<table class="tbTy1 dataLeft">
					<colgroup><col width="50%"><col width="*"></colgroup>
					<tbody>
					<tr>
						<th scope="row">게시1<span class="ir i-ess">필수입력</span></th>
						<td><input type="text" id="" class="intTy" style="width:88%;" /></td>
					</tr>
					<tr>
						<th scope="row">게시1<span class="ir i-ess">필수입력</span></th>
						<td>
							<input type="file" id="" class="intTy mgB10" style="width:70%;" />
							<p>파일 형식 : pdf<br />새 파일 등록 시 기존 파일은 자동 삭제 됩니다.</p>
						</td>
					</tr>
					<tr>
						<th scope="row">첨부파일 (영문)<span class="ir i-ess">필수입력</span></th>
						<td>
							<input type="file" id="" class="intTy mgB10" style="width:70%;" />
							<p>파일 형식 : pdf<br />파일 확장자를 확인해주세요</p>
						</td>
					</tr>
					<tr>
						<th scope="row">썸네일 (000 * 000) <span class="ir i-ess">필수입력</span></th>
						<td>
							<input type="file" id="" class="intTy mgB10" style="width:70%;" />
							<p>파일 형식 : jpg</p>
						</td>
					</tr>
					<tr>
						<th scope="row">게시2 <span class="ir i-ess">필수입력</span></th>
						<td><input type="text" id="" class="intTy" style="width:88%;" /></td>
					</tr>
					<tr>
						<th scope="row">등록</th>
						<td>
							<select id="" class="selTy" style="width:110px;">
								<option>년도</option>
								<option>2015</option>
								<option>2014</option>
								<option>2013</option>
							</select>
							<select id="" class="selTy" style="width:100px;">
								<option>월</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
							<select id="" class="selTy" style="width:100px;">
								<option>일</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="row">설정</th>
						<td>
							<input type="radio" name="chk_info" value=""> 설정 (Y)
							<input type="radio" name="chk_info" value="" checked="checked" class="mgL10"> 미설정 (N)
						</td>
					</tr>
					</tbody>
				</table>

				<div class="btnArea">
					<span class="btnR"><a href="#none" class="btnTy3">설정</a> <a href="#none" class="btnTy2">취소</a></span>
				</div>
			</div>
		</div>
	</div>
	<!-- //container -->
</div>

<div id="footerWrap">
		<div class="tFooter"><div class="footer">
			<ul class="policy">
				<li><a href="#"><img src="images/footer_policy1.png" alt="한국컴패션 소개" /></a></li>
				<li><a href="#"><img src="images/footer_policy2.png" alt="개인정보 취급방침" /></a></li>
				<li><a href="#"><img src="images/footer_policy3.png" alt="한국컴패션 이용약관" /></a></li>
				<li><a href="#"><img src="images/footer_policy4.png" alt="CHARITY NAVIGATOR 재정투명성 13년 연속 최고평점" /></a></li>
			</ul>
			<div class="right">
				
				<div class="select">
					<div class="selectBox">
						<ul>
							<li><a href="#">미국</a></li>
							<li><a href="#">프랑스</a></li>
							<li><a href="#">뉴질랜드</a></li>
							<li><a href="#">독일</a></li>
							<li><a href="#">영국</a></li>
							<li><a href="#">미국</a></li>
						</ul>
					</div>
				</div>
				<div class="top"><a href="#"><img src="images/btn_top.gif" alt="top" /></a></div>
			</div>
		</div></div>
		<div class="footer">
			<div class="logo"><img src="images/footer_logo.gif" alt="compassion" /></div>
			<ul>
				<li><img src="images/footer_add1.png" alt="한국컴패션 사업자등록번호 : 10882-05789 | 대표자 : 서정인" /></li>
				<li><span class="name"><img src="images/footer_name2.png" alt="서울본사" /></span><img src="images/footer_add2.png" alt="(우:140-894) 서울시 용산구 한남대로 102-5 (한남동 723-41) 석전빌딩 | 후원상담/안내 : 02-740-1000(평일 09:00~18:00)  팩스 : 02-740-1001 | 이메일 : info@compassion.or.kr" /></li>
				<li><span class="name"><img src="images/footer_name3.png" alt="부산지사" /></span><img src="images/footer_add3.png" alt="(우:601-838) 부산시 동구 중앙대로 216(초량3동 1199-9번지) 교원빌딩 17층" /></li>
				<li><span class="name"><img src="images/footer_name4.png" alt="Compassion USA Korea Office" /></span><img src="images/footer_add4.png" alt="14515 Valley view Ave.Ste.#C Santa Fe Springs. CA 90670  TEL : 562~483~4300  E-mail : info_us@compassion.or.kr" /></li>
				<li><span class="copyright"><img src="images/copy.png"p alt="Copyright© COMPASSION KOREA All Rights Reserved. Contact us for more information" /><span></li>
			</ul>
		</div>
	</div> <!-- E : id="footer" -->

</body>
</html>