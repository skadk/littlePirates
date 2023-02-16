<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>꼬마 해적단 회원가입2</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/member/signUp.css'/>">
		<script src="<c:url value='/js/member/signUp2.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<div id="signUpBox">
				<div id="processBar3"></div>
				<div id="processBar2"></div>
				<div id="signUpForm1Box">
					<a href="<c:url value='/'/>" id="signUpLogo" tabindex="-1">
						<img src="<c:url value='/images/logo.png'/>">
					</a>
					<div id="signUpInfo">
						<h1>부모 번호</h1>
						<br>
						<p>부모 메뉴를 사용하기 위한 번호를 입력해 주세요.</p>
					</div>
					<form id="signUpForm2" name="signUpForm2" method="post" action="<c:url value='/member/signUpForm2'/>">
						<input type="hidden" class="input" id="memId" name="memId" value="${ memId }">
						<div class="inputArea" id="parentInfo">
							<p>부모 번호</p>
							<input type="text" class="input" id="memParentNo" name="memParentNo" maxlength="4" placeholder="4자리 숫자">
						</div>
						<hr id="signUpHr">
						<div id="signUpInfo">
							<h1>자녀 등록</h1>
							<br>
							<p>자녀 정보를 입력해 주세요.</p>
						</div>
						<div class="inputArea" id="childInfo">
							<p>이름 / 애칭 / 별명</p>
							<input type="text" maxlength="28" class="input" id="childName" name="childName" placeholder="짱아">
						</div>
						<div class="inputArea" id="childGender">
							<p>성별</p>
							<div id="boyBtnBox">
								<input type="radio" id="boyBtn" name="childGender" value="남자 아이">
								<label for="boyBtn">남자 아이</label>
							</div>
							<div id="girlBtnBox">
								<input type="radio" id="girlBtn" name="childGender" value="여자 아이">
								<label for="girlBtn">여자 아이</label>
							</div>
						</div>
						<div class="inputArea">
							<p>아이 생일</p>
							<div class="info" id="childBirth">
								<select class="selectBox" id="birthYear" name="birthYear">
									<option disabled selected>출생 연도</option>
								</select>
								<select class="selectBox" id="birthMonth" name="birthMonth">
									<option disabled selected>월</option>
								</select>
								<select class="selectBox" id="birthDay" name="birthDay">
									<option disabled selected>일</option>
								</select>
							</div>
						</div>
						<div id="nextBtnArea">
							<div class="nextBtn" id="nextBtn">
								<div class="btnOne">
									<p class="btnText">모두 입력하셨나요?</p>
								</div>
								<div class="btnTwo">
									<p class="btnText2">가입!</p>
								</div>
							</div>
						</div>
						<input type="hidden" class="input" id="checkedSubmit" name="checkedSubmit" value="">
					</form>
				</div>
			</div>
        	<!-- bottom -->
        	<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>