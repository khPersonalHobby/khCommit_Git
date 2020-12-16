<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- 아이콘 가져오는 CDN -->

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<title>Insert title here</title>
 <link rel="stylesheet" href="/resources/css/admin/statistics/member.css">
 <style>
 
 </style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<%@ include file="/views/admin/section/header.jsp" %>
		</div>
		<div id="container">
			<div id="snb">
				<%@ include file="/views/admin/section/navi.jsp" %>
			</div>
			<div id="contents_box">
				<div id="pageTitle">
					<h2>
						통계
						<button id="manual">
							<i class="far fa-list-alt"></i> 매뉴얼
						</button>
					</h2>
				</div>
				<div id="contents">
				<div>
					<h3 align="center">달별 상품 통계</h3>
				</div>
				<canvas id="myChart"></canvas>
				</div>
			</div>
		</div>	
	<div id="footer">
	<%@ include file="/views/section/footer/footer.jsp"%>
	</div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<script> 
var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, { // 챠트 종류를 선택 
	type: 'line', // 챠트를 그릴 데이타
	data: { labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
	datasets: [{ label: 'My First dataset', backgroundColor: 'transparent',
	borderColor: 'red', data: [15, 0, 10, 2, 20, 30, 35] }] }, // 옵션
	options: {} }); 
</script>


</body>
</html>























