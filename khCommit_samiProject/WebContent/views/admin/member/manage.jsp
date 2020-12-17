<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.or.iei.member.model.vo.MemberPageData" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.or.iei.member.model.vo.Member" %>
<%@ page import="kr.or.iei.member.model.vo.MemberDate" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>Insert title here</title>
<link href="/resources/css/admin/member/manage.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%
	MemberPageData mpd = (MemberPageData)request.getAttribute("pageData");
	
	ArrayList<Member> mList = mpd.getmList();
	ArrayList<MemberDate> mdList = mpd.getMdList();
	String pageNavi = mpd.getPageNavi();
	
%>	
	
	<div id="wrapper">
		<div id="header">
				<%@ include file="/views/admin/section/header.jsp"%>
		</div>
		<div id="container">
			<div id="snb">
				<%@ include file="/views/admin/section/navi.jsp"%>
			</div>
			<section>
			<div id="pageTitle">
				<h2>
					회원 조회 및 삭제 
					<button id="manual">
						<i class="far fa-list-alt"></i> 매뉴얼
					</button>
				</h2>
			</div>
			<div id="sectionWrap">
				<table>
						<tr>
							<th>검색</th>
							<td>
								<select id="searchOpt">
									<option value="이름">이름</option>
									<option value="ID">ID</option>
								</select>
								<input type="text"/>
								<button type="button" value="검색">검색</button>
							</td>
						</tr>
					</table>
					<br>
					<div id="">
						<div>
							<table>
								<tr>
									<th>번호</th>
									<th>이름</th>
									<th>아이디</th>
									<th>휴대폰</th>
									<th>이메일</th>
									<th>가입일</th>
									<th>탈퇴여부</th>
									<th>탈퇴일</th>
									<th>기능</th>
								</tr>
							 <% for(Member m : mList) { %> 
								<tr>
									<td><%= m.getMemberNo()%></td>
									<td><%= m.getMemberName()%></td>
									<td><%= m.getMemberId()%></td>
									<td><%= m.getMemberPhone()%></td>
									<td><%= m.getMemberEmail()%></td>
							<% } %>	 
							<% for (MemberDate md : mdList) { %>		
									<td><%= md.getMemberJoinDate()%></td>
									<td><%= md.getMemberWithdrawYN() %></td>
									<td><%= md.getMemberWithdrawDate() %></td>
							<% } %>							
									<td><button class="buttonRayout">삭제</button></td>
								</tr>

							</table>
						</div>
					</div>
				</div>
			</section>
		</div>


			<script>
				$(function() {
					$('#inputText').keypress(function() {
						var inputTextLength = $(this).val().length;
						var inputTextPossible = 250 - inputTextLength;
						if (inputTextLength > 150) {
							$(this).val($(this).val().substring(0, 250));
							$('#textLength').html('0');

						} else {
							$('#textLength').html(inputTextPossible);
						}
					});
				});
			</script>

			<script>
				$(function() {
					$('#inputText2').keypress(function() {
						var inputTextLength = $(this).val().length;
						var inputTextPossible = 250 - inputTextLength;
						if (inputTextLength > 150) {
							$(this).val($(this).val().substring(0, 250));
							$('#textLength2').html('0');

						} else {
							$('#textLength2').html(inputTextPossible);
						}
					});
				});
			</script>

		

			
		<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp"%>
		</div>
	</div>
</body>
</html>