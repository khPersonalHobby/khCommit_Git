<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/css/member/join/joinForm.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrapper">
	
		<div id="header">
			<%@ include file="/views/section/header/headerComuPage.jsp"%>
		</div>
		
		<div id="navigator">
				<%-- <%@ include file="/views/sections/navigator.jsp" %> --%>
			<%@ include file="/views/section/navi/naviShop.jsp"%>

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
		
		<div id="container">
		
			<h1>회원정보 입력</h1>
			<form action="/joinForm.kh" method="post" id="memeber_form">
				<fieldset id="join_box">
					<legend>필수사항 </legend>
					<div>
						<div>아이디</div>
						<div>
							<input type="text" name="userId"
								placeholder="   공백 없는 영문/숫자 포함 6-20자" />
						</div>
					</div>
					<div>
						<div>비밀번호</div>
						<div>
							<input type="password" name="userPw" size="30"
								placeholder="   공백 없는 영문/숫자 포함 6-20자" />
						</div>
					</div>
					<div>
						<div>비밀번호 확인</div>
						<div>
							<input type="password" name="userPw_re" placeholder="   비밀번호를 재입력하세요" />
						</div>
					</div>
					<div>
						<div>이름</div>
						<div>
							<input type="text" name="userName" placeholder="   이름을 입력하세요" />
						</div>
					</div>
					<div>
						<div>닉네임</div>
						<div>
							<input type=text " name="userNickName" placeholder="   공백없는 문자 최대 6자" />
						</div>
					</div>
					<div class="info_box">
						<div>이메일</div>
						<div>
							<input class="email" type="text" />@ 					
							<select name="find_email" class="email">
								<option value="">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="nate.com">nate.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="empal.com">empal.com</option>
								<option value="unitel.co.kr">unitel.co.kr</option>
								<option value="gmail.com">gmail.com</option>
								<option value="korea.com">korea.com</option>
								<option value="chol.com">chol.com</option>
								<option value="paran.com">paran.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="hotmail.com">hotmail.com</option>
							</select>
							<div>
								<label>
								<input type="checkbox" name="mailing" /> 
								<span>정보메일을 수신하겠습니다.</span>
								</label>
								<p class="info_box_font">이메일 수신에 동의하시면 여러가지 할인혜택과 각종 이벤트 정보를 받아보실 수 있습니다.<br />회원가입관련, 주문배송관련 등의 메일은 수신동의와 상관없이 모든 회원에게 발송됩니다.<br /></p>
							</div>
						</div>
					</div>
					<div class="info_box">
						<div>휴대전화번호</div>
						<div>
							<input class="phone" type="tel" name="phone1" maxlength="4" onkeypress="onlyNumber();" /> -
							<input class="phone" type="tel" name="phone2" maxlength="4" onkeypress="onlyNumber();" /> -
							<input class="phone" type="tel" name="phone3" maxlength="4" onkeypress="onlyNumber();" />
							<button type="button" id="phone_send_check" class="button" onclick="sendSMSphone();">SMS인증</button>
							<div>
								<label style="padding-left:5px"> 
								<input type="checkbox" name="sms"/>
								<span> SMS를수신하겠습니다.</span>
								</label>
							<p class="info_box_font">SMS 수신에 동의하시면 여러가지 할인혜택과 각종 이벤트 정보를 받아보실 수 있습니다.<br />회원가입관련,주문배송관련 등의 SMS는 수신동의와 상관없이 구매 회원에게 발송됩니다.<br /></p>
							</div>
						</div>
					</div>
					<div style="display:none;">
						<div>인증번호</div>
						<div>
							<input class="phone" name="user_phone_check" type="tel"  maxlength="4" placeholder="  인증번호를 입력해주세요." style="width:40%;"> 
							<input type="hidden" name="phone_check" id="phone_check" value="">
							<button type="button" id="phone_get_check" class="button" onclick="check_phone_sms()">인증하기</button>
						</div>
					</div>
					<div class="info_box">
					<div>주소</div>
						<div>
							<input class="addr" type="text" name="addr" placeholder="   주소를 입력해주세요"  />
							<input class="addr" type="text" name="addr_number" placeholder="   우편번호 입력해주세요"  />
						</div>
					</div>
					<div class="info_box">
						<div>프로필사진</div>
						<div>
							<div id="profileImgWindow"></div>
							<input type="file" value="test">
						</div>
					</div>
					<div>
						<input class="button" type="submit" value="입력완료" id="complete" />
					</div>
				</fieldset>
			</form>
		</div>
		
		<div id="footer">
			<%@ include file="/views/section/footer/footer.jsp"%>
		</div>
		
	</div>

	<script>
		$(function() {
			$('#member_form').submit(function() {
				var $userId = $('input[name=userId]');
				var $userPw = $('input[name=userPw]');
				var $userPw_re = $('input[name=userPw_re]');
				var $userName = $('input[name=userName]');
				var $userNickName = $('input[name=userNickName]');
				var $addr_number = $('input[name=addr_number]');
				
				if(!/^[a-zA-Z0-9]{6,20}$/.test($userId.val())){
					alert("아이디는 영문/숫자포함 6~20자로 입력해주세요!");
					return false;
				}else if(!/^[a-zA-Z0-9]{6,20}$/.test($userPw.val())){
					alert("비밀번호는 영문/숫자포함 6~20자로 입력해주세요!");
					return false;
				}else if($userPw.val()!=$userPw_re.val()){
					alert("비밀번호와 비밀번호 확인값이 다릅니다!");
					return false;
				}else if(!/^[가-힣]{2,5}$/.test($userName.val())){
					alert("이름은 2글자이상 한글만 입력가능합니다!");
					return false;
				}else if(!/^[가-힣0-9]{2,6}$/.test($userNickName.val())){
					alert('닉네임은 한글/숫자포함 2~6자 로 입력해주세요!');
					return false;
				}else if(!/^[0-9]{2,5}$/.test($addr_number.val())){
					alert('우편번호는 숫자만 입력해주세요');
					return false;
				}
				return ture;
				//검증표현식쓰기
			});
			
			$('input').focusin(function(){
				console.log(this);
				$(this).css('outline','none');
				$(this).css('border','2px solid rgb(169, 120, 254)');
				
			});
			$('input').focusout(function(){
				$(this).css('outline','none');
				$(this).css('border','2px solid lightgrey');
			});
			

		});
	</script>

</body>
</html>