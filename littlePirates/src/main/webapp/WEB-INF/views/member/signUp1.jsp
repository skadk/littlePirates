<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>꼬마 해적단 회원가입1</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/member/signUp.css'/>">
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="<c:url value='/js/member/signUp1.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<div id="signUpBox">
				<div id="processBar1"></div>
				<div id="processBar2"></div>
				<div id="signUpForm1Box">
					<a href="<c:url value='/'/>" id="signUpLogo" tabindex="-1">
						<img src="<c:url value='/images/logo.png'/>">
					</a>
					<div id="signUpInfo">
						<h1>회원 가입</h1>
						<br>
						<p>이름과 휴대전화번호 및 이메일을 모두 정확하게 입력해 주세요.</p>
					</div>
					<form id="signUpForm1" name="signUpForm1" method="post" action="<c:url value='/member/signUpForm1'/>">
						<div class="inputArea">
							<p>이름</p>
							<input type="text" maxlength="28" class="input" id="memName" name="memName" placeholder="이름">
						</div>
						<div class="inputArea">
							<p>아이디</p>
							<input type="text" maxlength="35" class="input" id="memId" name="memId" placeholder="abc1234">
							<input type="hidden" class="input" id="checkedId" value="">
							<button type="button" class="btn" id="memIdCheck" tabindex="-1">아이디 중복 확인</button>
						</div>
						<div class="inputArea">
							<p>비밀번호</p>
							<input type="password" maxlength="10" class="input show" id="memPwd" name="memPwd" placeholder="숫자 / 영문자 / 특수문자 / 8 ~ 10자">
							<input type="text" class="input hidden" id="memPwdShow1" readonly>
							<button type="button" class="btn" id="pwdShowBtn" tabindex="-1">비밀번호 표시</button>
							<input type="password" maxlength="10" class="input show" id="memPwd2" placeholder="비밀번호 재입력">
							<input type="text" class="input hidden" id="memPwdShow2" readonly>
						</div>
						<div class="inputArea">
							<p>휴대전화번호</p>
							<input type="tel" maxlength="11" class="input" id="memMobile" placeholder="01012345678">
						</div>
						<div class="inputArea">
							<p>이메일</p>
							<input type="email" class="input" id="memEmail" placeholder="abc1234@abc.com">
							<button type="button" class="btn" id="mailAuthBtn" tabindex="-1">인증 이메일 보내기</button>
							<input type="text" class="input" id="authKeyCheck" placeholder="인증키">
							<input type="hidden" class="input" id="checkedAuth" value="">
							<button type="button" class="btn" id="authKeyBtn" tabindex="-1">인증키 확인</button>
						</div>
						<div class="inputArea">
							<p>주소</p>
							<input type="text" class="input" id="memAddress1" placeholder="도로명 / 지번" readonly>
							<button type="button" class="btn" id="searchAddrBtn" onclick="daumPostcode()" tabindex="-1">주소 검색</button>
							<input type="text" class="input" id="memAddress2" placeholder="건물명, 호수">
							<input type="text" class="input" id="memZipcode" placeholder="우편번호" readonly>
						</div>
						<div id="nextBtnArea">
							<div class="nextBtn" id="nextBtn">
							<!-- onclick="signUpCheck();" -->
								<div class="btnOne">
									<p class="btnText">모두 입력하셨나요?</p>
								</div>
								<div class="btnTwo">
									<p class="btnText2">다음으로!</p>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
        	<!-- bottom -->
        	<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>