<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/css/store/question/qnaWrite.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> 
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<%@ include file="/views/section/header/headerShopPage.jsp" %>
	</div>
	<div id="navigator">
		<%@ include file="/views/section/navi/naviShop.jsp" %>
	</div>
	<div id="contents">
		<div id="title">Q & A
		</div>
		<div id="write-sort">
			<select>
				<option>상품문의</option>
				<option>배송문의</option>
				<option>기타문의</option>
			</select>
		</div>
		<div id="write-title">
			<textarea>제목을 입력해주세요.</textarea>
		</div>
		<div id="write">
			<form method="post">
				<textarea id="summernote"></textarea>
				<div id="btn">
					<button type="submit">글쓰기</button>
					<button type="reset">취소</button>
				</div>
			</form>
		</div>
	</div>
	<div id="footer">
		<%@ include file="/views/section/footer/footer.jsp" %>
	</div>
</div>

<script>		
	$('#summernote').summernote({
		 placeholder: '내용을 입력해주세요.', tabsize: 2, height: 500,
		  toolbar: [
		    // [groupName, [list of button]]
		    ['style', ['bold', 'italic', 'underline', 'clear']],			    
		    ['fontsize', ['fontsize']],
		    ['color', ['color']],			   
		    ['height', ['height']],
		    ['insert', ['picture']],
		    ['view', ['fullscreen', 'codeview', 'help']]
			  ]		  
		});
		 </script>
</body>
</html>