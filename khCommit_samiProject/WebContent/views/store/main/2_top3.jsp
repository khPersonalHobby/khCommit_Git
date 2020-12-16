<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/store/main/2_top3.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>

	<div id="content">
		<div class="title">TOP 3</div>
		<center>
			<div id="box">
				<div id="top_left">
					<a href=""><img
						src="/resources/images/store/arrow_left.jpg" class="arrow"
						id="arrow_left" /></a>
				</div>

				<div id="top_img">
					<a href="/views/store/product/detail.jsp"><img src="/resources/images/community/index/1.jpg"
						id="t_img" /></a>
					<div id="c_content">
						<p id="hidden_text">밤하늘의 별을 따서 너에게 줄래 너는 내가 사랑하니까 더 소중하니까 <br>/////상품명</p>
					</div>
				</div>

				<div id="top_text">
					<div>
						<div class="top_rank">
							<a href="/views/community/detail/detail.jsp"><span>1</span></a>
						</div>
						<div class="top_comment">
							<div class="top_review">
								<p>
									<a href="/views/community/detail/detail.jsp">처음이라 만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고 처음이라
										만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고</a>
								</p>
							</div>
							<div class="top_tag">
								<p>#해시태그 #해시태그 #해시태그</p>
							</div>

						</div>
						<div class="top_heart">
							<i class="fas fa-heart heart-icon"></i><span>100</span>
						</div>
					</div>
					<div>
						<div class="top_rank">
							<a href="/views/community/detail/detail.jsp"><span>2</span></a>
						</div>
						<div class="top_comment">
							<div class="top_review">
								<p>
									<a href="/views/community/detail/detail.jsp">처음이라 만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고 처음이라
										만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고</a>
								</p>
							</div>
							<div class="top_tag">
								<span>#해시태그</span> <span>#해시태그</span>
							</div>
						</div>
						<div class="top_heart">
							<i class="fas fa-heart heart-icon"></i><span>3</span>
						</div>
					</div>
					<div>
						<div class="top_rank">
							<a href="/views/community/detail/detail.jsp"><span>3</span></a>
						</div>
						<div class="top_comment">
							<div class="top_review">
								<p>
									<a href="/views/community/detail/detail.jsp">처음이라 만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고 처음이라
										만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고</a>
								</p>
							</div>
							<div class="top_tag">
								<span>#해시태그</span> <span>#해시태그</span>
							</div>
						</div>
						<div class="top_heart">
							<i class="fas fa-heart heart-icon"></i><span>32</span>
						</div>
					</div>
					<div>
						<div class="top_rank">
							<a href="/views/community/detail/detail.jsp"><span>4</span></a>
						</div>
						<div class="top_comment">
							<div class="top_review">
								<p>
									<a href="/views/community/detail/detail.jsp">처음이라 만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고 처음이라
										만드는게 엉성하고 접착제가 튀어나왔지만 완성되고 나니깐 뿌듯하고</a>
								</p>
							</div>
							<div class="top_tag">
								<span>#해시태그</span> <span>#해시태그</span>
							</div>
						</div>
						<div class="top_heart">
							<i class="fas fa-heart heart-icon"></i><span>6</span>
						</div>
					</div>

				</div>

				<div id="top_right">
					<a href=""><img
						src="/resources/images/store/arrow_right.png" class="arrow"
						id="arrow_right" /></a>
				</div>
			</div>
		</center>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script>
		$(function() {
			$('#t_img').hover(function() {
				$(this).css('opacity', '0.3');
				$('#hidden_text').css('display', 'block');
			}, function() {
				$(this).css('opacity', '1');
			});
		});
	</script>

</body>
</html>