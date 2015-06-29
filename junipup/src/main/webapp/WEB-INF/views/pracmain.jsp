<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>연습페이지</title>
	<link rel="stylesheet" type="text/css" href="css/common.css">
</head>

<body>
<div id="wrap">
	<!-- header -->
	<div id="header">
		<div class="headerIn">
			<h1 class="logo ir">페이지</h1>
			<ul class="utilNav">
				<li><a href="#none" class="fcTy3">관리자님</a></li>
				<li><a href="#none" class="fcTy2">정보수정</a></li>
				<li class="last"><a href="#none" class="btnTy1">LOGOUT</a></li>
			</ul>
		</div>
	</div>
	<!-- //header -->

	<!-- container -->
	<div id="container">
		<div class="columnSub">
			<ul class="lnb">
				<li>
					<em>링크</em>
					<ul class="lnbSub">
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습 공시</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none" class="active">연습</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습</a></li>
					</ul>
				</li>
				<li>
					<em>링크</em>
					<ul class="lnbSub">
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습</a></li>
						<li><a href="#none">연습<br />연습</a></li>
						<li><a href="#none">연습<br />연습</a></li>
					</ul>
				</li>
				<li>
					<em>관리자</em>
					<ul class="lnbSub">
						<li><a href="#none">링크</a></li>
					</ul>
				</li>
				<li>
					<em>회원 관리</em>
					<ul class="lnbSub">
						<li><a href="#none">접속자 관리</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="columnMain">
			<h2>연습</h2>
			<p class="location"><span>연습</span><span>게시판</span></p>
			<div class="contents">
				<table class="tbTy1 dataLeft">
					<colgroup><col width="24%"><col width="*"></colgroup>
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

</body>
</html>