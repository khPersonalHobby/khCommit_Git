<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="/resources/css/member/myPage/myPage.css" rel="stylesheet" type="text/css"/>
<!-- 아이콘 가져오는 CDN -->
</head>
<body>
	<div id="warpper">
		<header>
			<%@ include file="/views/section/header/headerComuPage.jsp"%>
		</header>

		<%@ include file="/views/section/navi/naviComu.jsp"%>
		<script src="https://code.jquery.com/jquery-3.5.1.js"
			integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
			crossorigin="anonymous"></script>
		

		<div id="contents">
			<div id="contents-1">
				<ul id="contents-1-1">
					<a href="#">마이페이지</a>
					<li class="contents-1-2"><a
						href="/views/member/myPage/modify.jsp">회원 정보 수정</a></li>
					<li class="contents-1-2"><a
						href="/views/member/myPage/order.jsp">구매 내역</a></li>
					<li class="contents-1-2"><a href="#">배송 정보</a></li>
					<li class="contents-1-2"><a
						href="/views/member/myPage/withdraw.jsp">회원 탈퇴</a></li>
				</ul>

			</div>
			<div id="contents-2">
				<div id="contents-2-1">
					<ul id="profileImg">
						<a href="#"><img src="/resources/images/member/myPage/profile_img.png"
							height="70px" /></a>
						<li id="userName"><a href="#">사용자</a><span>(님)</span></li>
					</ul>
				</div>
				<div id="contents-2-2">
					<ul id="contents-middle">
						<li class="contents-middle" id="middle1">내가 쓴 글</li>
						<li class="contents-middle" id="middle2"></li>
						<li class="contents-middle" id="middle3">내가 쓴 댓글</li>
					</ul>
				</div>
				<div id="contents-2-3">
					<div id="contents-2-3-1">
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img1.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 50</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img2.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 20</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img3.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 40</li>
							<li>댓글 15</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img1.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 50</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img2.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 20</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img3.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 40</li>
							<li>댓글 15</li>
						</ul>
					</div>
					<div id="comment-list">
						<table>
							<tr id="testtest">
								<th class="comment-list-left">작성일</th>
								<th class="comment-list-right">내용</th>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
							<tr>
								<td class="comment-list-left">2020.12.10</td>
								<td class="comment-list-right"><a href="#">테스트</a></td>
							</tr>
						</table>
					</div>

				</div>

				<div id="HeartList-subject">
				<span>좋아요 누른 목록</span>
				</div>
				<div id="HeartList">
					<div id="HeartList-content">
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img1.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 50</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img2.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 20</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img3.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 40</li>
							<li>댓글 15</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img1.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 50</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img2.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 20</li>
							<li>댓글 0</li>
						</ul>
						<ul>
							<li>2020.12.10</li>
							<li><a href="/index.jsp"><img
									src="/resources/images/member/myPage/sample_img3.png" height="200px" /></a></li>
							<li><i class="fas fa-heart"> </i> 40</li>
							<li>댓글 15</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<footer>
			<%@ include file="/views/section/footer/footer.jsp"%>
		</footer>
	</div>

</body>
</html>