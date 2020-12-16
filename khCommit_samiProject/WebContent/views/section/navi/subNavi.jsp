<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/section/navi/subNavi.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
	
</head>
<body>
	<center>
		<div id="navi2">

			<div id="navi_category">
				<ul>
					<li><a href="/views/store/category/category_all.jsp"><span>ALL</span></a></li>
					<li><a href="/views/store/category/category_1.jsp"><span>실과 바늘</span></a></li>
					<li><a href="/views/store/category/category_2.jsp"><span>미술 키트</span></a></li>
					<li><a href="/views/store/category/category_3.jsp"><span>라이프/소품 키트</span></a></li>
					<li><a href="/views/store/category/category_4.jsp"><span>베이킹/데코 키트</span></a></li>
					<li><a href="/views/store/category/category_5.jsp"><span>가죽 공예</span></a></li>
					<li><a href="/views/store/category/category_6.jsp"><span>비즈 공예</span></a></li>
					<li><a href="/views/store/category/category_7.jsp"><span>퍼즐/조립/브릭</span></a></li>
					<li><select class="custom-select" id="inputGroupSelect01">
							<option value="1" selected>인기 순</option>
							<option value="2">신규 등록 순</option>
							<option value="3">낮은 가격 순</option>
							<option value="4">높은 가격 순</option>
							<option value="5">상품평 많은 순</option>
					</select></li>
				</ul>
			</div>
		</div>
	</center>
</body>
</html>