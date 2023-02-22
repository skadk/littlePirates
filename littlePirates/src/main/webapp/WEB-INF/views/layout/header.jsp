<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
			<div id="backgroundBox">
			    <div class="blur">
			    </div>
			    <div class="particles" id="particles">
			    </div>
			</div>
 -->			
			<header>
				<div id="headerBox">
					<div id="headerLogoBox">
						<a href="<c:url value='/'/>" id="headerLogo">
							<img src="<c:url value='/images/logo.png'/>">
						</a>
					</div>
					<div id="topMenuBox">
						<c:if test="${ empty sessionScope.sid }">
							<a href="<c:url value='/member/login'/>">
								로그인
							</a>
							<a href="<c:url value='/member/signUp1'/>">
								회원가입
							</a>
						</c:if>
						<c:if test="${ not empty sessionScope.sid }">
							<a href="<c:url value='/member/logout'/>">
								로그아웃
							</a>
							<a href="<c:url value='/myPage/detailViewMyPage/${sessionScope.sid}'/>">
								마이 페이지
							</a>
							<br>
							<p>해적 ${sessionScope.sid} 님 출항!</p>
						</c:if>
					</div>
				</div>
			</header>