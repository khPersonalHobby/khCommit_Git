<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/community/write/write.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
</head>
<body>
<div id="header">
			<%@ include file="/views/section/header/headerComuPage.jsp" %>
		</div>
		<%@ include file="/views/section/navi/naviComu.jsp"%>
	<div class="contents">

		<div id="contents-main">
			<div class="main-content">
				<div class="side-title">
					<p>
						<span>글쓰기</span>
					</p>
					<h1>커뮤니티</h1>
				</div>

				<div>
					<form>
						<input type="text" placeholder="상품명을 검색하세요." id="searchBox"/>
						<input type="submit" class="submit" value="검색" id="searchBtn"/>
					</form>
				</div>
				<form id="articleForm" role="form" action="/article" method="post">
					<br style="clear: both">
					<div id="subjectForm">
						<input type="text" id="subject" name="subject"
							placeholder="제목을 입력해주세요."/>
					</div>
					<div class="form-group">
						<textarea id="summernote" name="content" placeholder="content"
							maxlength="140" rows="7"></textarea>
					</div>
					<div class="hashtag-section">
						<div>
							
						</div>
						<button id="plusBtn" type="button">
							<span>태그추가</span>
						</button>
					</div>
					<div class="button-group">
						<button class="submit" name="tagChoice" id="tagChoice">
							확인
						</button>
						<button type="submit" class="submit" name="submit">취소</button>
					</div>
				</form>
				
			</div>
			<script>
				$(function(){
					var $tagSection=$(".hashtag-section").children("div");
					var $addTag=$(".hashtag-section").children().last();
					var cnt=0;
					$addTag.click(function(){
						if(cnt>9){
							$addTag.css("display", "none");
						}
						else{
							$tagSection.html($tagSection.html()+"<button><span>#샬라샬라</span></button>");
							cnt++;
						}
					});
				});
			</script>
			<script>
				$('#summernote')
						.summernote(
								{
									placeholder : '내용을 입력해주세요.',
									tabsize : 2,
									height : 500,
									toolbar : [
											// [groupName, [list of button]]
											[
													'style',
													[ 'bold', 'italic',
															'underline',
															'clear' ] ],
											[ 'fontsize', [ 'fontsize' ] ],
											[ 'color', [ 'color' ] ],
											[ 'height', [ 'height' ] ],
											[ 'insert', [ 'picture' ] ],
											[
													'view',
													[ 'fullscreen', 'codeview',
															'help' ] ] ]
								});
			</script>
		</div>
	</div>
	<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp"%>
		</div>
</body>
</html>