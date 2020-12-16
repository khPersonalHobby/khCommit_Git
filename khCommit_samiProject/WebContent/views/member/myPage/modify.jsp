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
                        <form action="/Modify.kh" method="post">
                            <div>
                                <div class="inputLable">아이디</div>
                                <div class="inputWrap">
                                    <input type="text" name="userId" value="<%=m.getMemberId() %>" disabled>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">비밀번호</div>
                                <div class="inputWrap">
                                    <input type="password" name="memberPw" maxlength="20" placeholder="비밀번호">
                                    <span>공백 없는 영문, 숫자포함 6~20자</span>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">비밀번호 확인</div>
                                <div class="inputWrap">
                                    <input type="password" name="memberPwCheck" maxlength="20" placeholder="비밀번호 재입력">
                                    <span>비밀번호를 다시 한 번 입력해주세요.</span>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">이름</div>
                                <div class="inputWrap">
                                    <input type="text" name="memberName" value="<%=m.getMemberName()%>">
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">닉네임</div>
                                <div class="inputWrap">
                                    <input type="text" name="memberNickname" maxlength="6" value="<%=m.getMemberNickname() %>">
                                    <span>공백 없는 문자 최대 6자</span>
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">이메일</div>
                                <div class="inputWrap">
                                    <input type="email" name="memberEmail" value="<%=m.getMemberEmail()%>">
                                </div>
                            </div>
                            <div>
                                <div class="inputLable">휴대폰번호</div>
                                <div class="inputWrap">
                                    <input type="text" name="phone1" maxlength="3" value="<%=m.getMemberPhone().substring(0,3) %>" id="phoneInput">
                                    <input type="text" name="phone2" maxlength="4" value="<%=m.getMemberPhone().substring(3,7) %>" id="phoneInput">
                                    <input type="text" name="phone3" maxlength="4" value="<%=m.getMemberPhone().substring(7,11) %>" id="phoneInput">
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