<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<title>Insert title here</title>
<link href="/resources/css/admin/member/manage.css" rel="stylesheet" type="text/css" />
</head>
<body>
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
									<option value="회원번호">회원번호</option>
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
									<th>기능</th>
								</tr>
								<tr>
									<td>5</td>
									<td>박현아</td>
									<td>user5</td>
									<td>010-1111-2222</td>
									<td>hyuna@hyuna.god</td>
									<td>2020.20.20</td>
									<td><button class="buttonRayout">삭제</button></td>
								</tr>
								<tr>
									<td>4</td>
									<td>박현아</td>
									<td>user4</td>
									<td>010-1111-2222</td>
									<td>hyuna@hyuna.god</td>
									<td>2020.20.20</td>
									<td><button class="buttonRayout">삭제</button></td>
								</tr>
								<tr>
									<td>3</td>
									<td>박현아</td>
									<td>user3</td>
									<td>010-1111-2222</td>
									<td>hyuna@hyuna.god</td>
									<td>2020.20.20</td>
									<td><button class="buttonRayout">삭제</button></td>
								</tr>
								<tr>
									<td>2</td>
									<td>박현아</td>
									<td>user2</td>
									<td>010-1111-2222</td>
									<td>hyuna@hyuna.god</td>
									<td>2020.20.20</td>
									<td><button class="buttonRayout">삭제</button></td>
								</tr>
								<tr>
									<td>1</td>
									<td>박현아</td>
									<td>user1</td>
									<td>010-1111-2222</td>
									<td>hyuna@hyuna.god</td>
									<td>2020.20.20</td>
									<td><button class="buttonRayout">삭제</button></td>
								</tr>
							</table>
						</div>
						<div id="buttonPanel">
							<button id="memberInsertBtn" class="buttonRayout">회원등록</button>
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