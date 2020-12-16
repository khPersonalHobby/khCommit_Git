<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>  <!-- 아이콘 가져오는 CDN -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
   integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
   crossorigin="anonymous"></script>
   
   <link href="/resources/css/member/myPage/order.css" rel = "stylesheet" type ="text/css"/>

</head>
<body>
   <div id="wrapper">
      <div id="header">
         <%@ include file="/views/section/header/headerComuPage.jsp" %>
      </div>
      <div id="navigator">
        <%@ include file="/views/section/navi/naviComu.jsp"%>

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

		<div id="contents">
        	<div id="snb">
        	<div id="snb-reserved"></div>
        	<div id="snb-adminId">
        		<b>마이페이지</b>
        	</div>
        		<div id="snb-list">
        			<a href="/views/member/myPage/modify.jsp">회원정보 수정</a><br>
        			<a href="/views/member/myPage/order.jsp">MY 쇼핑</a><br>
    				<a href="#">배송 정보</a><br>
    				<a href="/views/member/myPage/withdraw.jsp">회원 탈퇴</a><br>	
        		</div>
	      	</div>
	      	
	      	<div id="container">
	      		<div id="containerTitle">
	      			<span>kwrm90 님의 MY 쇼핑</span>
	      		</div>
	      		<div id="basicInfo">
        			<div id="dateSelect">
						<select>
							<option>전체</option>
							<option>1주</option>
							<option>2주</option>
							<option>3주</option>
							<option>1개월</option>
							<option>2개월</option>
							<option>3개월</option>
							<option>직접선택</option>
						</select>
					</div>

        			<table cellspacing="0" cellpadding="0" width=100%;>
        				<tr>
        					<th class="colName" width="10%">날 짜</th>
        					<th class="colName" width="20%">주문 번호</th>
        					<th class="colName" width="40%">상 품</th>
        					<th class="colName" width="15%">주문 금액</th>
        					<th class="colName" width="15%">상 태</th>
        				</tr>
        				<tr>
        					<td>
        					
 <script>
    var today = new Date();
    
    var year = today.getFullYear();
    var month = ("0"+(today.getMonth() + 1)).slice(-2);
    var date = ("0"+(today.getDate())).slice(-2);
    
    document.write(year + "-" + month + "-" + date);
</script>

        					</td>
        					<td>
    							<a href="#">2020120700475117531</a>    					
	       					</td>
	       					<td style="text-align : left;">
    							<div id="productImg" style="width:50px; height:50px; border: 1px solid black; text-align:center; margin-right: 10px; padding-top:15px; float:left;">
    								<i class="fas fa-camera"></i>
    							</div>
    							<div style="float:left;">
    								<a href="#" class="productName">[원데이 클래스] 블랑주니 작가님 <br>블랑주니의 꽃리스 프랑스자수 클래스(일시품절)</a>
    							</div>	
	       					</td>
	       					<td>14,500원</td>
	       					<td>결재 완료</td>
        				</tr>
        				<tr>
        					<td>2020-12-07</td>
        					<td>
    							<a href="#">2020120700475117531</a>    					
	       					</td>
	       					<td style="text-align : left;">
    							<div id="productImg" style="width:50px; height:50px; border: 1px solid black; text-align:center; margin-right: 10px; padding-top:15px; float:left;">
    								<i class="fas fa-camera"></i>
    							</div>
    							<div style="float:left;">
    								<a href="#" class="productName">[원데이 클래스] 블랑주니 작가님 <br>블랑주니의 꽃리스 프랑스자수 클래스(일시품절)</a>	
    							</div>	
	       					</td>
	       					<td>14,500원</td>
	       					<td>결재 취소</td>
        				</tr>
        			</table>
        		</div>
	      	</div>
	      	
	      	
		
		
      </div>
      <div>
         <%@ include file="/views/section/footer/footer.jsp" %>
      </div>
   </div>
</body>
</html>
















