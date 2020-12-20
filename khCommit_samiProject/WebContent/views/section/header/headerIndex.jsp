<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="kr.or.iei.member.model.vo.MemberAll"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/section/header/headerIndex.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
MemberAll mAll = (MemberAll) session.getAttribute("memberAll");
	%>
	<header>
		<div id="shop">
			<a href="/views/store/main/store.jsp">스토어</a>
		</div>
		<div id="logo">
			<a href="/index.jsp"><img src="/resources/images/logo.png" /></a>
		</div>
		<div id="login">
		<%if (mAll != null){ %>
		<% if(0<=mAll.getM().getMemberNo() && mAll.getM().getMemberNo()<=100) { %>
		<a href="/memberAllListPage.kh">관리자페이지</a>
		<% } else { %>
		<a href="/views/member/myPage/myPage.jsp">마이페이지</a>
		<% } %>
		<a href="/memberLogout.kh">로그아웃</a><br>
		<%} else{%>
		<a href="/views/member/login/loginForm.jsp">로그인</a>
		<%} %>
	</div>
	</header>
</body>
</html>