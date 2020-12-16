<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/section/navi/naviComu.css" rel="stylesheet" type="text/css" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
	<div id="navigator">
		<div id="gnb">
			<div>
				<a href="/index.jsp">커뮤니티</a>
			</div>
			<span>></span>
			<ul>
				<li><a href="/index.jsp">홈</a></li>
				<li><a href="/views/store/category/category_all.jsp" id="category_tap">카테고리</a>
					<div id="t-wrapper">
						<div id="t-1">
							<div id="t-3">
								<div id="t-5" class="t-img">
									<a href="/views/store/category/category_1.jsp"><span>실과 바늘</span></a>
								</div>
								<div id="t-6">
									<div id="t-8" class="t-img">
										<a href="/views/store/category/category_5.jsp"><span>가죽
												공예</span></a>
									</div>
									<div id="t-9" class="t-img">
										<a href="/views/store/category/category_2.jsp"><span>미술
												키트</span></a>
									</div>
								</div>
								<div id="t-7" class="t-img">
									<a href="/views/store/category/category_3.jsp"><span>라이프/소품
											키트</span></a>
								</div>
							</div>
							<div id="t-4">
								<div id="t-10" class="t-img">
									<a href="/views/store/category/category_4.jsp"><span>베이킹/데코
											키트</span></a>
								</div>
								<div id="t-11" class="t-img">
									<a href="/views/store/category/category_6.jsp"><span>비즈 공예</span></a>
								</div>
							</div>
						</div>
						<div id="t-2" class="t-img">
							<a href="/views/store/category/category_7.jsp"><span>퍼즐/조립/브릭</span></a>
						</div>
					</div></li>
				<li><a href="/views/store/question/list.jsp">Q&amp;A</a></li>
			</ul>
			<form action="/index.jsp" method="get" id="search_box">
				<input type="text" />
				<button>
					<i class="fas fa-search"
						style="color:lightgrey"></i>
				</button>
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script>
		$(function() {
			var $selector = $('#t-wrapper a');
			
			$selector.hover(function() {
				$selector.css('opacity', '1');
				$selector.not(this).css('background-color', 'rgba(0,0,0,0)');
			}, function() {
				$selector.css('opacity', '0.6');
				$selector.not(this).css('background-color', 'rgba(0,0,0,0.6)');
			});
		});
	</script>
	
	<script src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"></script>
   <script>
      $(function() {
         $('#category_tap').hover(function() {
            $('#t-wrapper').css('z-index', '99');
            $('#t-wrapper').show();
            $('#carouselExampleIndicators').css('z-index', '-1');
            $('div[id*=t-]').show();
         });
         $('div[id*=t-]').hover(function() {
            $('#t-wrapper').children().show();
         });
         $('#t-wrapper').hover(function() {
            $(this).children().show();
         }, function() {
            $('#t-wrapper').hide();
            $('#t-wrapper').css('z-index', '-1');
            $('#carouselExampleIndicators').css('z-index', '99');
         });
      });
   </script>
</body>
</html>