<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<header>
				<div id="headerBox">
					<div id="topLogoBox">
						<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo.png'/>"></a>
					</div>
					<div id="topMenuBox">
						<a href="<c:url value='/member/login'/>">로그인</a>
						<a href="<c:url value='/member/signUp'/>">회원가입</a>
					</div>
				</div>
			</header>
			<c:if test="${empty sessionScope.sid }">
				<nav>
					<div id="kidsMainMenuBox">
							<div class="kidsMainMenu" id="kidsMainMenu1">
								<div id="imageBox1">
									<div class="nonClickBox1">
									</div>
									<div class="nonClickBox2">
									</div>
									<div class="nonClickBox3">
									</div>
									<p id="textBox">그림 일기</p>
									<a href="<c:url value='/board'/>"><img src="<c:url value='/image/공룡1작은거.png'/>"></a>
								</div>
							</div>
							<div class="kidsMainMenu" id="kidsMainMenu2">
								<a href="<c:url value='/'/>"><img src="<c:url value='/image/공룡2작은거.png'/>"></a>
							</div>
							<div class="kidsMainMenu" id="kidsMainMenu3">
								<a href="<c:url value='/'/>"><img src="<c:url value='/image/공룡6작은거.png'/>"></a>
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