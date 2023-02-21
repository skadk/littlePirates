<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 변경</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/member/changePwd.css'/>">
		<script src="<c:url value='/js/member/changePwd.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<div id="changePwdBox">
				<div id="changeFormBox">
					<a href="<c:url value='/'/>" id="changePwdLogo" tabindex="-1">
						<img src="<c:url value='/images/logo.png'/>">
					</a>
					<div id="changePwdInfo">
						<h1>비밀번호 변경</h1>
					</div>
					<form id="changePwdForm" name="changePwdForm" method="post" action="<c:url value='/member/changePwdForm'/>">
						<div class="inputArea">
							<p>새 비밀번호</p>
							<input type="hidden" class="input" id="memId" name="memId" value="${memId}">
							<input type="password" maxlength="10" class="input show" id="memPwd" name="memPwd" placeholder="숫자 / 영문자 / 특수문자 / 8 ~ 10자" onpaste="return false;">
							<input type="text" class="input hidden" id="memPwdShow1" readonly>
							<button type="button" class="btn" id="pwdShowBtn" tabindex="-1">비밀번호 표시</button>
							<input type="password" maxlength="10" class="input show" id="memPwd2" placeholder="비밀번호 재입력" onpaste="return false;">
							<input type="text" class="input hidden" id="memPwdShow2" readonly>
						</div>
						<div class="inputArea" id="changePwdBtnBox">
							<button type="submit" class="btn" id="changePwdBtn" tabindex="-1">비밀번호 변경</button>
						</div>
					</form>
				</div>
			</div>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>