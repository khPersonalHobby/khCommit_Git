<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/community/detail/detail.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
</head>
<body>
<div id="header">
			<%@ include file="/views/section/header/headerComuPage.jsp" %>
		</div>
		<%@ include file="/views/section/navi/naviComu.jsp"%>
	<div id="wrapper">

		<div class="contents">
			<!-- <div id="contents-left"></div> -->
			<div id="contents-main">
				<div class="main-content">
					<div class="side-title">
						<div class="communityDetail-indent">
							<p>
								<span>커뮤니티</span>
							</p>
							<h2>즐거운 가죽공예 시간~~!!!</h2>
							<ul>
								<li><span>2020-12-01 00:38:01</span></li>
								<li><span>좋아요</span> <span>24</span></li>
								<li><span>댓글</span> <span id="totalComment">1</span></li>
							</ul>
						</div>
					</div>

					<div id="sub-section-contentMain" class="sub-section">들어가는
						내용들</div>
					<!-- <div class="hashtag-section">
			<button>
				<span>#가죽공예</span>
			</button>
			<button>
				<span>#지갑</span>
			</button>
		</div> -->
					<div class="sub-section full-size">
						<div class="slide-wrapper">
							<div class="slide-section">
								<b class="slide-title">#태그된 상품</b>
								<div class="responsive">
									<img src="/resources/images/community/detail/product.jpg" />
								</div>
							</div>
						</div>
					</div>
					<div class="sub-section full-size">
						<div class="slide-wrapper">
							<div class="slide-section">
								<b class="slide-title">#관련 커뮤니티 둘러보기</b>
								<div class="responsive">
									<img src="/resources/images/community/detail/product.jpg" /> <img
										src="/resources/images/community/detail/product.jpg" /> <img
										src="/resources/images/community/detail/product.jpg" /> <img
										src="/resources/images/community/detail/product.jpg" /> <img
										src="/resources/images/community/detail/product.jpg" />
								</div>
							</div>
						</div>
					</div>
					<div class="comment-section">
						<b class="comment-title"><span>1</span>개의 댓글</b>
						<div class="comment-write">
							<textarea id="commentArea" name="reply_contents" cols="30"
								rows="10"></textarea>
							<button class="submit">등록</button>
						</div>
						<div class="text-comment">
							<ul class="active">
								<li class="mine">
									<div class="comment-wrapper">
										<div class="profile">
											<p>하커스</p>
											<ul>
												<li>2020-12-01 08:47:37</li>
											</ul>
										</div>
										<div class="comment">
											<div class="comment-text reply_val_2076">
												<pre id="reply_text_2076">헤헿 좋은걸보니 저도 구매해봐야겠어용!!!!</pre>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- <div id="contents-right"></div> -->
		</div>

		<script type="text/javascript">
			$(function() {
				$(window).scroll(function() {
					if ($(this).scrollTop() != 0) {
						$('#backtotop').fadeIn();
					} else {
						$('#backtotop').fadeOut();
					}
				});

				$('#backtotop').click(function() {
					$('body,html').animate({
						scrollTop : 0
					}, 800);
				});
				$("#heartClick").click(function(){
					$("#black-heart").css("display", "none");
					$("#red-heart").css("display", "block");
				});
			});
		</script>


		<!-- 여기서부터 푸터 -->
		<div id="heartClick">
			<a href="###"><img
				src="/resources/images/community/detail/black-heart.png" id="black-heart"><img
				src="/resources/images/community/detail/red-heart.png" id="red-heart"></a>
		</div>
		<div id="backtotop">
			<img src="/resources/images/community/detail/up-arrow.png">
		</div>

	</div>
	<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp"%>
		</div>
</body>
</html>