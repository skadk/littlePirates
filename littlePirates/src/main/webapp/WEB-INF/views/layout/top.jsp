<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<header>
				<div id="headerBox">
					<div id="topLogoBox">
						<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo.png'/>"></a>
					</div>
					<div id="topMenuBox">
						로그인<br>
						회원가입
					</div>
				</div>
			</header>
			<c:if test="${empty sessionScope.sid }">
				<nav>
					<div id="kidsMainMenuBox">
							<div class="kidsMainMenu" id="kidsMainMenu1">
								<a href="<c:url value='/'/>"><img src="<c:url value='/image/공룡1작은거.png'/>"></a>
							</div>
							<div class="kidsMainMenu" id="kidsMainMenu2">
								<a href="<c:url value='/'/>"><img src="<c:url value='/image/공룡2작은거.png'/>"></a>
							</div>
							<div class="kidsMainMenu" id="kidsMainMenu3">
								<a href="<c:url value='/'/>"><img src="<c:url value='/image/공룡3작은거.png'/>"></a>
							</div>
							<div class="kidsMainMenu" id="kidsMainMenu4">
								<a href="<c:url value='/'/>"><img src="<c:url value='/image/공룡4작은거.png'/>"></a>
							</div>
					</div>
				</nav>
			</c:if>
			<c:if test="${not empty sessionScope.sid }">
				<nav>
					<div id="mainMenuBox">
						<a href="<c:url value='/member/login'/>">로그인</a>
						<a href="<c:url value='/member/signUp'/>">회원가입</a>
					</div>
				</nav>
			</c:if>