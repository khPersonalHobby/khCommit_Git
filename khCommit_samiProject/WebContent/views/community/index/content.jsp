<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/community/index/content.css" rel="stylesheet"
	type="text/css" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
	<center>
		<div id="contents">

			<div class="box">
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/1.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/2.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/3.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/4.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/5.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"> <img
						src="/resources/images/community/index/6.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/7.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/1.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/2.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/3.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"><img
						src="/resources/images/community/index/4.jpg" class="index_img" /></a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
				<div class="indexImgBox">
					<a href="/views/community/detail/detail.jsp"> <img
						src="/resources/images/community/index/5.jpg" class="index_img" />
					</a>
					<div class="i_content">
						<p class="index_text">밤하늘의 별을 따서 너에게 줄래</p>
						<p class="index_text2">♥ 7</p>
					</div>
				</div>
			</div>
		</div>
	</center>

	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script>
		$(function() {
			$('.index_img').hover(
					function() {
						$(this).css('opacity', '0.2');
						$(this).parent().next().css('background-color',
								'rgba(0, 0, 0, 0.8)');
						$('.index_text').css('display', 'block');
						$('.index_text2').css('display', 'block');
					},
					function() {
						$(this).css('opacity', '1');
						$(this).parent().next()
								.css('background-color', 'white');
					});
		});
	</script>
</body>
</html>