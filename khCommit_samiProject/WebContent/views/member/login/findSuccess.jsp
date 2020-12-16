<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/member/login/findSuccess.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<%@ include file="/views/section/header/headerComuPage.jsp" %>
		</div>
		<div id="navigator">
				<%-- <%@ include file="/views/sections/navigator.jsp" %> --%>
			<%@ include file="/views/section/navi/naviShop.jsp"%>

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

		</div>
		<div id="container">
			<div id="find_box">
				<ul>
					<li id="click_id">아이디찾기</li>
					<li id="click_pw">비밀번호 찾기</li>
				</ul>	
				<div id="find_id_text">
					회원 이메일 주소(dms****************)로 정보가 발송되었습니다.메일을 확인하시기 바랍니다.				
				</div>
				<div id="login_box">
					<a href="/views/member/login/loginForm.jsp">로그인</a>
					<a href="/views/member/login/findId.jsp">비밀번호찾기</a>
				</div>
			</div>
		</div>
		<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp" %>
		</div>
	</div>
	
</body>
</html>