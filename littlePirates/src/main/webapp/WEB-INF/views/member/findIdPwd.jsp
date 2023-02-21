<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디 / 비밀번호 찾기</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/member/findIdPwd.css'/>">
		<script src="<c:url value='/js/member/findIdPwd.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<div id="findIdPwdBox">
				<div id="findIdPwdFormBox">
					<a href="<c:url value='/'/>" id="findIdPwdLogo" tabindex="-1">
						<img src="<c:url value='/images/logo.png'/>">
					</a>
					<div id="findIdPwdInfo">
						<h1 id="findIdOpen" class="showBtn">아이디 찾기</h1><h1 id="findPwdOpen" class="hiddenBtn">비밀번호 변경</h1>
						<p>모두 정확하게 입력해 주세요.</p>
					</div>
					<form class="show" id="findIdForm" name="findIdForm">
						<div class="inputArea">
							<p>이름</p>
							<input type="text" maxlength="28" class="input" id="memName" name="memName" placeholder="이름">
						</div>
						<div class="inputArea">
							<p>이메일</p>
							<input type="email" class="input" id="memEmail" name="memEmail" placeholder="abc1234@abc.com">
							<button type="button" class="btn" id="idMailAuthBtn" tabindex="-1">인증 이메일 보내기</button>
							<input type="text" class="input" id="authKeyCheck" placeholder="인증키">
							<input type="hidden" class="input" id="checkedAuth" value="">
							<button type="button" class="btn" id="authKeyBtn" tabindex="-1">인증키 확인</button>
						</div>
						<div class="inputArea" id="findIdBtnBox">
							<button type="submit" class="btn" id="findIdBtn" tabindex="-1">아이디 찾기</button>
						</div>
					</form>
					
					<form class="hidden" id="findPwdForm" name="findPwdForm">
						<div class="inputArea">
							<p>이름</p>
							<input type="text" maxlength="28" class="input" id="memName2" name="memName2" placeholder="이름">
						</div>
						<div class="inputArea">
							<p>아이디</p>
							<input type="text" maxlength="35" class="input" id="memId2" name="memId2" placeholder="abc1234">
						</div>
						<div class="inputArea">
							<p>이메일</p>
							<input type="email" class="input" id="memEmail2" name="memEmail2" placeholder="abc1234@abc.com">
							<button type="button" class="btn" id="pwdMailAuthBtn" tabindex="-1">인증 이메일 보내기</button>
							<input type="text" class="input" id="authKeyCheck2" placeholder="인증키">
							<input type="hidden" class="input" id="checkedAuth2" value="">
							<button type="button" class="btn" id="authKeyBtn2" tabindex="-1">인증키 확인</button>
						</div>
						<div class="inputArea" id="finPwdBtnBox">
							<button type="submit" class="btn" id="findPwdBtn" tabindex="-1">비밀번호 변경</button>
						</div>
					</form>
				</div>
			</div>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>