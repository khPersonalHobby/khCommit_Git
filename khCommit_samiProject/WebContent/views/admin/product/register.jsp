<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<!-- 아이콘 가져오는 CDN -->
<title>Insert title here</title>

<link href="/resources/css/admin/product/registar.css" rel="stylesheet"
	type="text/css" />

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

			<!-- jQuery 라이브러리 -->
			<script src="https://code.jquery.com/jquery-3.5.1.js"
				integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
				crossorigin="anonymous"></script>
			<script>
				$(function() {
					$('#inputText').keydown(function() {
						var inputTextLength = $(this).val().length;
						var inputTextPossible = 150 - inputTextLength;
						if (inputTextLength > 150) {
							$(this).val($(this).val().substring(0, 150));
							$('#textLength').html('0');

						} else {
							$('#textLength').html(inputTextPossible);
						}
					});
				});
			</script>
			<script>
				$(function() {
					$('#inputText2').keydown(function() {
						var inputTextLength = $(this).val().length;
						var inputTextPossible = 250 - inputTextLength;
						if (inputTextLength > 250) {
							$(this).val($(this).val().substring(0, 250));
							$('#textLength2').html('0');

						} else {
							$('#textLength2').html(inputTextPossible);
						}
					});
				});
			</script>
			<div id="contents_box">
				<form action="" method="post">
					<div id="contents">
						<div id="pageTitle">
							상품 등록 <span id="manual"> <a href="#"><i
									class="far fa-list-alt"></i> 관리자 페이지</a></span>
						</div>
						<div id="basicInfo">
							<div id="basicTitle">기본정보</div>
							<table cellspacing="0" cellpadding="0" width=100%;>
								<tr>
									<th>카테고리 <span style="color: blue; font-size: 14px;">(필수)</span></th>
									<td colspan="2"><select>
											<option value=1>실과바늘</option>
											<option value=2>미술키트</option>
											<option value=3>라이프/소품키트</option>
											<option value=4>베이킹/데코키트</option>
											<option value=5>가죽공예</option>
											<option value=6>비즈공예</option>
											<option value=7>퍼즐/조립/브릭</option>
									</select></td>
								</tr>

								<script>
									$(function() {

										$('#plus')
												.click(
														function() {
															var $optionAdd = $(
																	'.optionTextAdd')
																	.last();
															$optionAdd
																	.after('<input type="text" class="optionTextAdd"/>');

														});
										$('#minus')
												.click(
														function() {
															var $optionAdd = $(
																	'.optionTextAdd')
																	.last();
															if ($optionAdd
																	.attr('id') != 'default') {
																$optionAdd
																		.remove();

															}
														});

									});
								</script>

								<tr>
									<th>옵션 <span style="color: blue; font-size: 14px;">(필수)</span></th>
									<td colspan="2"><input type="text" name="option" /> <input
										type="text" name="option" /> <input type="text" name="option"
										id="default" class="optionTextAdd" /> <input type="button"
										value="+" id="plus" style="width: 40px;" /> <input
										type="button" value="-" id="minus" style="width: 40px;" /></td>
								</tr>

								<tr>
									<th>상품명 <span style="color: blue; font-size: 14px;">(필수)</span></th>
									<td colspan="2"><input type="text" name="productName"
										id="inputText" style="width: 500px; height: 32px;"
										placeholder="예시) 뜨게질 키트" /> [<span id=textLength>150</span>/150]
									</td>
								</tr>

								<tr>
									<th>판매가 <span style="color: blue; font-size: 14px;">(필수)</span></th>
									<td colspan="2"><input type="text" name="insertPrice"
										id="insertPrice" style="height: 32px; direction: rtl;" /> 원</td>
									<span></span>
								</tr>
								<tr>
									<th>상품 요약 설명</th>
									<td colspan="2"><input type="text" name="productSummary"
										id="inputText2" style="width: 800px; height: 32px;" /> [<span
										id=textLength2>250</span>/250]</td>
								</tr>


								<tr>
									<th>상품 상세 설명</th>
									<td colspan="2"><script
											src="https://code.jquery.com/jquery-3.5.1.min.js"
											crossorigin="anonymous"></script> <script
											src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
											integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
											crossorigin="anonymous"></script>

										<link rel="stylesheet"
											href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
											integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
											crossorigin="anonymous"> <script
											src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
											integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
											crossorigin="anonymous"></script>

										<link
											href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
											rel="stylesheet"> <script
											src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

										<div name="productDetails" id="summernote"></div> <script>
											$('#summernote')
													.summernote(
															{
																placeholder : '상품 상세 설명을 입력하세요.',
																tabsize : 2,
																height : 400,
																width : 1310

															});
										</script> 
										<script>
											function setThumbnail(event) {
												var reader = new FileReader();

												reader.onload = function(event) {
													var img = document
															.createElement("img");
													img
															.setAttribute(
																	"src",
																	event.target.result);
													document.querySelector(
															"#mainImg")
															.appendChild(img);
												};

												reader
														.readAsDataURL(event.target.files[0]);
											}
										</script></td>
								</tr>
								<tr>
									<th>이미지</th>
									<td style="width: 20%;"><span style="margin: 60px;">대표
											이미지</span>
										<center>

											<div>

												<label>
													<div id="mainImg" class="img_wrap">
														<i class="fas fa-plus"></i>
														<!-- <input type="file" id="imgFile" style="display : none;"/> -->
														<input type="file" id="image" accept="image/*"
															onchange="setThumbnail(event);" style="display: none;" />
														<img id="img" />
													</div> - 권장사이즈 : 500px * 500px
												</label>

											</div>
										</center></td>


									<td>추가이미지
										<div>
											<label for="image">
												<div id="addImg" class="img_wrap">
													<i class="fas fa-plus"></i>
												</div> <input type="file" id="image" accept="image/*"
												onchange="setThumbnail(event);" style="display: none;" />
											</label><br> <span> - 권장이미지 : 500px * 500px / gif, png,
												jpg(jpeg) / 5개까지 추가 가능</span><br>
										</div>

									</td>
								</tr>
							</table>
						</div>

						<div id="basicInfo">
							<div id="basicTitle">쇼핑몰 진열 설정</div>
							<table cellspacing="0" cellpadding="0" width=100%;>
								<tr>
									<th>진열상태</th>
									<td colspan="2"><input type="radio"
										name="displayCondition" value="Y" /> 진열함 <input type="radio"
										name="displayCondition" value="N" checked /> 진열안함</td>
								</tr>
								<tr>
									<th>판매상태</th>
									<td colspan="2"><input type="radio" name="salesCondition"
										value="Y" /> 판매함 <input type="radio" name="salesCondition"
										value="N" checked /> 판매안함</td>
								</tr>
								<tr>
									<th>메인진열</th>
									<td colspan="2"><input type="checkbox" /> Best상품 <input
										type="checkbox" /> 신상품 <input type="checkbox" /> 인기상품 <input
										type="checkbox" /> 추천상품</td>
								</tr>
							</table>

							<button id="submit" class="button">상품등록</button>
							<button id="reset" class="button">취소</button>

						</div>
					</div>
				</form>
			</div>
		</div>
		<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp"%>
		</div>
	</div>


</body>
</html>



