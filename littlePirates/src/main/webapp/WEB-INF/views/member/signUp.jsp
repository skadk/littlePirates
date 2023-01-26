<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>꼬마 해적단</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/member/signUp.css'/>">
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="<c:url value='/js/member/signUp.js'/>"></script>
		<script src="<c:url value='/js/member/memIdCheck.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
			<div id="signUpBox">
				<form name="signUpForm" id="signUpForm" method="post" action="<c:url value='/member/signUpForm'/>">
					<h1>회원 가입</h1>
					<h4>* 아이디</h4>
					<span class="input_area">
						<input type="text" maxlength="13" name="memId" id="memId">
					</span>
					<input type="hidden" name="checkedId" value="">
					<button type="button" id="memIdCheck">중복확인</button>
					<h4>* 비밀번호</h4>
					<span class="input_area">
						<input type="password" maxlength="25" name="memPwd" id="memPwd" placeholder="영문자+숫자+특수문자 조합">
					</span>
					<h4>* 비밀번호 확인</h4>
					<span class="input_area">
						<input type="password" maxlength="25" name="memPwd2" id="memPwd2">
					</span>
					<label id="pwdResult"></label>
					<h4>부모 번호</h4>
					<span class="input_area">
						<input type="text" name="memParentNo" id="memParentNo">
					</span>
					<h4>* 이름</h4>
					<span class="input_area"><input type="text" maxlength="5" name="memName" id="memName"></span>
					<h4>연락처</h4>
					<span class="input_area">
						<input type="tel" maxlength="11" name="memHP" id="memHP" placeholder="ex) 01012345678">
					</span>
					<h4>이메일</h4>
					<span class="input_area">
						<input type="email" name="memEmail" id="memEmail">
					</span>
					<input type="button" onclick="sendAuthCode()" value="이메일 인증">
					<h4>* 우편번호</h4>
					<span class="input_area">
						<input type="text" name="memZipcode" id="memZipcode" placeholder="우편번호" readonly>
					</span>
					<input type="button" onclick="daumPostcode()" value="우편번호 찾기">
					<h4>주소</h4>
					<span class="input_area">
						<input type="text" name="memAddress1" id="memAddress1" placeholder="주소" readonly>
					</span>
					<h4>상세주소</h4>
					<span class="input_area">
						<input type="text" name="memAddress2" id="memAddress2" placeholder="상세주소">
					</span>
					<h4>자녀 이름, 별명</h4>
					<span class="input_area">
						<input type="text" id="childName" placeholder="뀰이">
					</span>
					<h4>자녀 생일</h4>
					<span class="input_area">
						<input type="text" id="childBirthday">
					</span>
					<h4>자녀 나이</h4>
					<span class="input_area">
						<input type="text" id="childAge">
					</span>
					<h4>자녀 성별</h4>
					<span class="input_area">
						<input type="text" id="childGender">
					</span>
					<div class="btnArea">
						<button type="button" id="joinBtn" onclick="signupCheck();">가입하기</button>
					</div>
				</form>
			</div>
        	<!-- bottom -->
        	<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>