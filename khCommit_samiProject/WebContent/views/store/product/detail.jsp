<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/css/store/product/detail.css" rel="stylesheet" type="text/css">
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
	<div id="menu-info">
		<p><a href="/views/store/category/category_all.jsp">카테고리</a></p><p> > </p><p><a href="/views/store/category/category_5.jsp">가죽공예</a></p>
	</div>
	
<br>
	<div id="contents">
		<div id="sale-product">
			<div id="sale-pic">
				<img src="/resources/images/store/product/pro1.jpg"/>
			</div>
			<div id="sale-info">
				<div id="sale-title">DIY 소울비쥬 보잉백 만들기 키트 (스트랩포함)</div>
				<div id="sale-price">23,800원</div>
				<div id="sale-delivery">
					<div id="delivery-title">배송</div>
					<div id="delivery-price">택배<br>2,500원<br>추가배송비 3,000원(지역별)</div>
				</div>
				<div id="sale-option">
					<select align="right">
						<option>베이지</option>
						<option>핑크</option>
						<option>브라운</option>
						<option>네이비</option>
						<option>그린</option>
						<option>블랙</option>
					</select>
				</div>
				<div id="sale-count">
					<div id="count-title">
						수량 
					</div>
					<div id="count-pro">
						<input type="text" value="1" size="3"/><input type="button" value="+"/><input type="button" value="-"/>
					</div>
				</div>
				<div id="total">
					<div id="total-title">
						총 상품금액
					</div>
					<div id="total-price">
						23,800원
					</div>
				</div>
				<div id="pay">
					<button id="basketBtn">장바구니</button><button id="payBtn" onclick="location.href='/views/store/pay/pay.jsp'">결제하기</button>
				</div>
			</div>
		</div>
		<div id="sale-menu">
			<button>상세설명</button>
			<button>상품후기</button>
			<button onclick="window.location='/views/store/product/qna.jsp'">상품문의</button>
			<button>교환/반품/배송</button>
		</div>
		<div id="sale-detail">
			<img src="/resources/images/store/product/prodetail.jpg"/>
		</div>
	</div>
	<div id="qna">
		<div id="qna-title">상품 문의</div>
		<div id="qna-contents">
			<div id="qna-search">
				<form action="" method="get">
						<input type="text" name="keyword" placeholder="제목, 내용, 상품명, 상품설명, 작성자를 검색하세요."/>
						<input type="submit" value="검색" name="searchBtn"/>
				</form>
			</div>
			<div id="qna-board">
				<table>
					<tr class="qna-board">
						<th>번호</th>
						<th>상태</th>
						<th>문의</th>
						<th>작성자</th>
						<th>등록일</th>
					</tr>
					<tr class="qna-board">
						<td>1</td>
						<td>답변완료</td>
						<td>문의제목</td>
						<td>오*진</td>
						<td>2020-12-08</td>
					</tr>
				</table>
			</div>
			<div id="qna-write">
				<form>
					<input type="button" value="글쓰기" onclick="window.location='/views/store/product/qnaWrite.jsp'" name="writeBtn"/>
				</form>		
			</div>
		</div>
	</div>
	<div id="shop-guide">
		<div id="guide-title">교환/반품/배송</div>
		<div id="guide-contents">
			<center>
				<table>
				<tr>
					<td style="border:1px solid gray" width="100px">배송정보 </td>
					<td>- 배송은 결제일로부터 3일 이내 발송합니다. (단, 주말 및 공휴일은 배송일에서 제외됩니다.)<br>
					- 주문 제작의 상품의 경우 상품에 따라 배송 기간이 상이할 수 있습니다.<br>
					- 각 공급사마다 추가 배송비가 부과될 수 있으며, 배송비 부과 기준에 따라 별도의 배송비가 책정될 수도 있습니다. (일부 도서·산간 지역의 경우 추가 배송비가 발생할 수 있습니다.)<br>
					- 직접 수령은 불가능하며 온라인 주문/배송만 가능합니다.<br>
					- 공급사의 배송 실수나 착오로 인한 반품 배송 비용은 공급사에서 부담합니다.<br>
					- 상품의 재고 상황에 따라 배송일이 다소 지연되거나 품절 취소 될 수도 있으니, 이 점 양해하여 주시기 바랍니다.</td>
				</tr>
				<tr>
					<td>교환/반품 </td>
					<td style="border:1px solid gray">- 교환/반품/취소/환불 신청은 배송완료 후 7일 이내 가능합니다. (단, 일부 제품의 경우 신청이 제한될 수 있습니다.)<br>
					- 환불 승인 후 영업일 기준 3~7일 이내 환불 및 취소 여부 확인 가능합니다.<br>
					- 상품 불량인 경우는 배송비를 포함한 전액이 환불됩니다.<br>
					- 상품가치가 훼손된 경우 반품/환불이 불가합니다. (제품포장 개봉 및 주문제작상품/밀봉포장상품 및 스티커 부착 상품/식품 등)<br>
					- 출고 이후 반품/환불 요청 시 상품 회수 후 처리됩니다.<br>
					- 상품 페이지에 교환/환불/AS에 대한 브랜드 개별 기준이 있는 경우에는 해당 내용이 우선 적용 됩니다.</td>
				</tr>
			</table>
			</center>
		</div>
	</div>
	<div id="shop-community">
		<div id="community-title">같은 상품 다른 후기</div>
		<div id="community-contents">
			<%@ include file="/views/store/product/relationProduct.jsp" %>
		</div>
	</div>
	<div id="footer">
		<%@ include file="/views/section/footer/footer.jsp" %>
	</div>
</div>
</body>
</html>