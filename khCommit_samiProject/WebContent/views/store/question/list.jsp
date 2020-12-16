<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/css/store/question/list.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<%-- <%@ include file="/views/section/header.jsp" %> --%>
		<%@ include file="/views/section/header/headerShopPage.jsp"%>
	</div>
	<div id="navigator">
	<%-- <%@ include file="/views/section/navigator.jsp" %>		 --%>	
		<%@ include file="/views/section/navi/naviShop.jsp"%>
	
	</div>
	<div id="contents">
		<div id="title">Q & A
		</div>
		<div id="category">
			<a href="">전체 </a> | <a href="">공지사항</a> | <a href="">자주하는질문</a> | <a href="">상품문의</a> | <a href="">배송문의</a> | <a href="">기타문의</a>
		</div>
		<div id="board">
			<table>
				<tr>
					<th>NO</th>
					<th>ITEM</th>
					<th>CATEGORY</th>
					<th>SUBJECT</th>
					<th>NAME</th>
					<th>DATE</th>
				</tr>
				<tr>
					<td align="center">공지</td>
					<td></td>
					<td>공지</td>
					<td>주문결제완료 후, 영업일 기준 다음날 입고일 문의 부탁드립니다.</td>
					<td>관리자</td>
					<td>2020-12-12</td>
				</tr>
				<tr>
					<td align="center">1</td>
					<td id="product-img"><img src="/resources/images/store/question/pro1.jpg"/></td>
					<td>상품문의</td>
					<td>문의드려요</td>
					<td>이**</td>
					<td>2020-12-12</td>
				</tr>
			</table>
		</div>
		<div id="qna-bottom">
			<div id="search">
				<select>
					<option>제목</option>
					<option>내용</option>
					<option>이름</option>
					<option>ID</option>
					<option>상품명</option>
				</select> 
				<form action="" method="get">
					<input type="text" name="keyword"/>
					<input type="submit" value="검색"/>
				</form>
			</div>
			<div id="qna-write">
				<button onclick="window.location='/views/store/question/qnaWrite.jsp'">글쓰기</button>
			</div>
		</div>
	</div>
	<div id="footer">
		<%@ include file="/views/section/footer/footer.jsp" %>
	</div>
</div>
</body>
</html>