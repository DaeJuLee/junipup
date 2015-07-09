<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="mainHeader2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
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
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  if (stmnStartPoint != stmnEndPoint) { 
   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
   stmnRefreshTimer = stmnScrollSpeed; 
   }
  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  } 
 function InitializeStaticMenu() {
  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
  RefreshStaticMenu();
  }
 
 
</script>
<style type="text/css">
#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
</style>


</head>
<body  onload="InitializeStaticMenu();">

<div class="center">
	
	<div class="left_center">
    	<div class="left_center1" id="image_list_2" align="center">
        	<div class="clsBannerScreen">
            	<div class="images" style="display:block">
                	<img src="images/google.jpg">
            	</div>
            	<div class="images"><img src="images/daum.jpg"></div>
            	<div class="images"><img src="images/naver.jpg"></div>
            	<div class="images"><img src="images/nate.jpg"></div>
            	<div class="images"><img src="images/yahoo.jpg"></div>
        	</div>
 
        	<ul class="clsBannerButton" id="label_2">
            	<li class="fir">구글<br>(google.co.kr)</li>
            	<li>다음<br>(daum.net)</li>
            	<li>네이버<br>(naver.com)</li>
            	<li>네이트<br>(nate.com)</li>
            	<li>야후<br>(kr.yahoo.com)</li>
        	</ul>
    	</div>
    	
    	<div class="left_center2">
    		<div class="left11">
    			<ul class="tabs">
    				<li class="tab1"><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    				
    				<li class="tab2"><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    			</ul>
    		</div>
    		
    		<div class="left12">
    			<ul>
    				<li><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    				
    				<li><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    			</ul>
    		</div>
    	</div>
    	
    	<div class="left_center3">
    		<div class="left21">
    			<ul>
    				<li><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    				
    				<li><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    			</ul>
    		</div>
    		
    		<div class="left22">
    			<ul>
    				<li><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    				
    				<li><a href="#">공지사항</a>
    					<ul>
    						<li>서브메뉴</li>
    						<li>서브메뉴</li>
    					</ul>
    				</li>
    			</ul>
    		</div>
    	</div>
    </div>
    
    <div class="right_center">
    	asldkj
    </div>
    
    
</div>

	
</body>
</html>