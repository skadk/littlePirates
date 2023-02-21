<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>꼬마 해적단</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/member/login.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/member/loginCheck.js'/>"></script>
		<script src="<c:url value='/js/member/findIdForm.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<div id="loginBox">
				<div id="loginFormBox">
					<a href="<c:url value='/'/>" id="loginLogo" tabindex="-1">
						<img src="<c:url value='/images/logo.png'/>">
					</a>
					<div id="loginInfo">
						<h1>로그인</h1>
					</div>
					<form id="loginForm" name="loginForm">
						<div class="inputArea">
							<p>아이디</p>
							<input type="text" maxlength="35" class="input" id="memId" name="memId" value="${memId}" placeholder="아이디" required>
						</div>
						<div class="inputArea">
							<p>비밀번호</p>
							<input type="password" maxlength="15" class="input" id="memPwd" name="memPwd" placeholder="비밀번호" onpaste="return false;" required>
						</div>
						<div class="inputArea" id="loginLink">
							<a href="<c:url value="/member/findIdForm"/>"><p>아이디 / 비밀번호가 기억이 안나요</p></a>
							<a href="<c:url value="/member/signUp1"/>"><p>회원가입</p></a>
						</div>
						<div class="inputArea" id="loginBtnBox">
							<button type="submit" class="btn" id="loginBtn" tabindex="-1">로그인</button>
						</div>
					</form>
				</div>
			</div>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>