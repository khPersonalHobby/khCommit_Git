<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- 아이콘 가져오는 CDN -->
</head>

<link href="/resources/css/admin/post/comment.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div id="warpper">
		<div id="header">
			<%@ include file="/views/admin/section/header.jsp"%>
		</div>
		<div id="container">
			<div id="snb">
				<%@ include file="/views/admin/section/navi.jsp"%>
			</div>
			<div id="contents_box">
				<div id="article_right">
					<div id="article_right_top">
						<ul id="article_right_top_title">
							<li id="article_right_top_title_1" style="font-size: 30px">댓글
								관리</li>
						</ul>
						<br> <br> <br>
						<div id="article_right_top_sub">댓글 삭제</div>
					</div>

					<div id="article_right_middle">
						<!-- Servlet으로 DB에 넘겨주기 -->
						<form action="#">
							<div id="article_right_middle_line1">
								<ul id="article_right_middle_line2">
									<li id="article_right_middle_title">댓글 검색</li>
									<li id="article_right_middle_select"><select
										id="post_select">
											<option>제목</option>
											<option>내용</option>
											<option>작성자</option>
											<option>작성일</option>
									</select></li>
									<li id="article_right_middle_search"><input type="text"
										placeholder="키워드를 입력하세요" name="search" /> <input
										type="submit" style="height: 30px; width: 60px;" value="검색"
										id="input_keyword" /></li>
								</ul>
							</div>
						</form>
					</div>
				</div>
				<div id="article_right_main">
					<span>전체 댓글 목록</span><br> <span>[오늘 등록된 새 댓글 5건] 검색 결과
						7건</span>

					<!-- Servlet으로 DB에 넘겨주기 -->
					<form action="#">
						<div id="article_right_submain">
							<input type="button" value="댓글 삭제" id="post_delete"
								name="deleteList" />
							<div id="article_right_main_table">
								<table id="post_table">
									<tr id="search_list">
										<th>선택</th>
										<th>번호</th>
										<th>분류</th>
										<th>제목</th>
										<th>미리보기</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>

									<!-- Servlet으로 DB불러서 구현 -->
									<tr id="post_list">
										<td><input type="checkbox" /></td>
										<td>1</td>
										<td>상품 사용후기</td>
										<td>일주일동안 곰돌이인형 만든 후기</td>
										<form>
											<td><button>미리보기</button></td>
										</form>
										<td>코로나비켜</td>
										<td>20.10.19</td>
									</tr>

								</table>

							</div>

						</div>
					</form>

				</div>
			</div>
		</div>
		<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp"%>
		</div>
	</div>


</body>
</html>