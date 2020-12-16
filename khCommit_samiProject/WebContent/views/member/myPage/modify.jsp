<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/member/myPage/modify.css">
    <script type="text/javascript" src="/resources/js/profileModify.js"></script>
    <script src="https://kit.fontawesome.com/822d8824d6.js" crossorigin="anonymous"></script>
    <script>
        $(function(){
            $("#phoneBtn").click(function(){
                $("#smsNo").attr("disabled", false);
            });
        });
    </script>
</head>
<body>
    <div id="wrapper">
        <header>
            <%@ include file="/views/section/header/headerComuPage.jsp" %>
        </header>
        <nav>
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
        </nav>
        <div id="middleWrapper">
            <aside>
                <div id="asideTitle">
                   <p><a href="/views/member/myPage/myPage.jsp">마이페이지</a></p>
                </div>
                <div id="asideMenu">
                    <ul>
                        <li>
                            <a href="/views/member/myPage/modify.jsp">회원 정보 수정</a>
                        </li>
                        <li>
                            <a href="/views/member/myPage/order.jsp">구매 내역</a>
                        </li>
                        <li>
                            <a href="#">배송 정보</a>
                        </li>
                        <li>
                            <a href="/views/member/myPage/withdraw.jsp">회원 탈퇴</a>
                        </li>
                    </ul>
                </div>
            </aside>
            <section>
                <!-- <div id="profileHeader">프로필헤더</div> -->
                <div id="modifyContainer">
                    <div id="modifyTitle">
                        <h2>정보수정</h2>
                        <div id="withdrawWrap">
                            <a href="#">
                                <span>회원탈퇴하기</span>
                                <img src="/resources/images/member/myPage/ico_arrow_more.png" alt="오른쪽 애로우 아이콘"/>
                            </a>
                        </div>
                    </div>
                    <div id="modifyPanel">
                        <form action="" method="post">
                            <div>
                                <div class="inputLable">아이디</div>
                                <div class="inputWrap">
                                    <input type="text" name="userId" value="" disabled>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">비밀번호</div>
                                <div class="inputWrap">
                                    <input type="password" name="userPw" maxlength="20" placeholder="비밀번호">
                                    <span>공백 없는 영문, 숫자포함 6~20자</span>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">비밀번호 확인</div>
                                <div class="inputWrap">
                                    <input type="password" name="userPwCheck" maxlength="20" placeholder="비밀번호 재입력">
                                    <span>비밀번호를 다시 한 번 입력해주세요.</span>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">이름</div>
                                <div class="inputWrap">
                                    <input type="text" name="userName" value="">
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">닉네임</div>
                                <div class="inputWrap">
                                    <input type="text" name="nickname" maxlength="6" value="">
                                    <span>공백 없는 문자 최대 6자</span>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">이메일</div>
                                <div class="inputWrap">
                                    <input type="email" name="email" value="">
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">휴대폰번호</div>
                                <div class="inputWrap">
                                    <input type="text" name="phone1" value="010" id="phoneInput" disabled>
                                    <input type="text" name="phone2" maxlength="4" value="" id="phoneInput">
                                    <input type="text" name="phone3" maxlength="4" value="" id="phoneInput">
                                    <button type="button" id="phoneBtn">SMS인증</button>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">인증번호</div>
                                <div class="inputWrap">
                                    <input type="text" id="smsNo" maxlength="4" placeholder="인증번호를 입력해주세요." disabled>
                                    <button type="button" id="phoneBtn">인증하기</button>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">프로필사진</div>
                                <div class="inputWrap">
                                    <div id="profileImgWindow"></div>
                                    <input type="file" value="test">
                                </div>
                            </div>
                            <div id="modifyBtnPanel">
                                <input type="submit" value="정보수정">
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
        <footer>
            <%@ include file="/views/section/footer/footer.jsp" %>
        </footer>
    </div>
</body>
</html>