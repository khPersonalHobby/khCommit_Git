<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/section/navi/naviIndex.css" rel="stylesheet" type="text/css" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
	<div id="navigator">
		<div id="gnb">
			<ul>
				<li><a href="/views/community/write/write.jsp">ADD</a></li>
				<li><a href="#">BEST</a></li>
				<li><a href="#">NEW</a></li>
			</ul>
			<form action="/index.jsp" method="get" id="search_box">
				<input type="text" />
				<button>
					<i class="fas fa-search"
						style="height: 100%; border: 0; width: 20px; color:lightgrey"></i>
				</button>
			</form>
		</div>
	</div>
</body>
</html>