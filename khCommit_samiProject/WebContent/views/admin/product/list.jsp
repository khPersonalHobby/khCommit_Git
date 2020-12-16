<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>  <!-- 아이콘 가져오는 CDN -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/admin/product/list.css" rel = "stylesheet" type ="text/css"/>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
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
			<div id="contents_box">
				<div id="pageTitle">
					<div id="pageTitle">
						상품목록 <span id="manual"> <a href="#"><i
								class="far fa-list-alt"></i> 관리자 페이지</a></span>
					</div>
				</div>
				<form action="#" method="post">
					<div id="basicInfo">
						<div class="basicTitle">상세검색</div>
						<table cellspacing="0" cellpadding="0" width=100%;>
							<tr>
								<th>검색분류</th>
								<td colspan="2"><select>
										<option>상품명</option>
										<option>상품번호</option>
										<option>상품코드</option>
								</select> <input type="text" name="productSearch"
									style="width: 500px; height: 32px;" /></td>
							</tr>

							<tr>
								<th>상품등록일</th>
								<td colspan="2"><select>
										<option>상품등록일</option>
										<option>상품최종수정일</option>
								</select> <input type="date" name="startDate" id="starDate"
									min="2000-01-01" max="2100-12-31" /> ~ <input type="date"
									name="endDate" id="lastDate" min="2000-01-01" max="2100-12-31" />
								</td>
							</tr>

						</table>
						<div>
							<button id="submit" class="searchBtn">상품검색</button>
							<button id="reset" class="searchBtn">취소</button>
						</div>
					</div>
				</form>
				<script>
		$(function(){
			$('#checkboxAll').click(function(){
				if($(this).prop('checked')){
					$('.checkboxse').prop('checked', true);
				} else {
					$('.checkboxse').prop('checked', false);
				}
			});
		});
	
	</script>

				<div id="basicInfo">
					<div class="basicTitle">상품목록</div>
					<table cellspacing="0" cellpadding="0" width=100%;>
						<tr>
							<th><input type="checkbox" id="checkboxAll"
								class="checkboxse" /></th>
							<th>상품명</th>
							<th>판매가</th>
							<th>상품 등록일</th>
						</tr>
						<tr>
							<th><input type="checkbox" class="checkboxse" /></th>
							<td>
								<div class="productImg">
									<i class="fas fa-camera"></i>
								</div> <a href="#" class="productName">[원데이 클래스] 블랑주니 작가님 <br>블랑주니의
									꽃리스 프랑스자수 클래스(일시품절)
							</a>
							</td>
							<td style="width: 300px; padding: 0px; text-align: center;">
								<input type="text" style="width: 80px; direction: rtl;" /> 원

							</td>

							<td style="width: 300px; padding: 0px; text-align: center;">
								2020-12-06</td>
						</tr>

						<tr>
							<th><input type="checkbox" class="checkboxse" /></th>
							<td>
								<div class="productImg">
									<i class="fas fa-camera"></i>
								</div> <a href="#" class="productName">[정규 클래스] 슬페이퍼 작가님<br>슬페이퍼의
									컬러 페이퍼아트 클래스
							</a>
							</td>
							<td style="width: 300px; padding: 0px; text-align: center;">
								<input type="text" style="width: 80px; direction: rtl;" /> 원

							</td>

							<td style="width: 300px; padding: 0px; text-align: center;">
								2020-12-06</td>
						</tr>
						<tr>
							<th><input type="checkbox" class="checkboxse" /></th>
							<td>
								<div class="productImg">
									<i class="fas fa-camera"></i>
								</div> <a href="#" class="productName">[원데이 클래스] 블랑주니 작가님 <br>블랑주니의
									꽃리스 프랑스자수 클래스(일시품절)
							</a>
							</td>
							<td style="width: 300px; padding: 0px; text-align: center;">
								<input type="text" style="width: 80px; direction: rtl;" /> 원

							</td>

							<td style="width: 300px; padding: 0px; text-align: center;">
								2020-12-06</td>
						</tr>

						<tr>
							<th><input type="checkbox" class="checkboxse" /></th>
							<td>
								<div class="productImg">
									<i class="fas fa-camera"></i>
								</div> <a href="#" class="productName">[정규 클래스] 슬페이퍼 작가님<br>슬페이퍼의
									컬러 페이퍼아트 클래스
							</a>
							</td>
							<td style="width: 300px; padding: 0px; text-align: center;">
								<input type="text" style="width: 80px; direction: rtl;" /> 원

							</td>

							<td style="width: 300px; padding: 0px; text-align: center;">
								2020-12-06</td>
						</tr>
						<tr>
							<td colspan="6">
								<button id="checkDel" class="productListBtn">선택삭제</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp"%>
		</div>
	</div>
</body>
</html>
























