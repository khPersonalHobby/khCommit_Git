<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/admin/section/navi.css">
</head>
<body>
<div id="snb-box">
					<div id="snb-reserved"></div>
					<div id="snb-adminId">
						<p>
							관리자<span>(님)</span>
						</p>
						<div id="snb-dayInfo">
							<span>오늘 회원가입 수 : </span><span>15</span><br>
							<br> <span>오늘 매출 금액 : </span><span>150</span>
						</div>
					</div>
					<div id="snb-list">
						<ul>
							<li><a href="/views/admin/statistics/member.jsp">통계</a>
								<ul class="list">
									<li><a href="/views/admin/statistics/sales.jsp">매출</a></li>
									<li><a href="/views/admin/statistics/member.jsp">회원</a></li>
								</ul></li>
							<li><a href="/views/admin/product/registar.jsp">상품관리</a>
								<ul class="list">
									<li><a href="/views/admin/product/register.jsp">상품등록</a></li>
									<li><a href="/views/admin/product/list.jsp">상품목록</a></li>
								</ul></li>
							<li><a href="/views/admin/member/manage.jsp">회원관리</a>
								<ul class="list">
									<li><a href="/views/admin/member/manage.jsp">회원 조회&삭제</a></li>
								</ul></li>
							<li><a href="/views/admin/post/write.jsp">게시글 관리</a>
								<ul class="list">
									<li><a href="/views/admin/post/write.jsp">게시글 삭제</a></li>
									<li><a href="/views/admin/post/comment.jsp">댓글 삭제</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
</body>
</html>