<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<footer>
				<div id="footerBox">
					<nav id="footerNav">
						<c:if test="${ empty sessionScope.parentSid }">
							<p><a href="<c:url value='/'/>" tabindex="-1">꼬마 해적단</a></p>
							<p><a href="<c:url value='/paintDiary'/>" tabindex="-1">항해 일지</a></p>					
							<p><a href="<c:url value='/checklist'/>" tabindex="-1">오늘의 빙고</a></p>
						</c:if>
						<c:if test="${ not empty sessionScope.parentSid }">
							<p><a href="<c:url value='/'/>" tabindex="-1">꼬마 해적단</a></p>
							<p><a href="<c:url value='/board'/>" tabindex="-1">비밀 기지</a></p>			
							<p><a href="<c:url value='/paintDiary'/>" tabindex="-1">항해 일지</a></p>					
							<p><a href="<c:url value='/checklist'/>" tabindex="-1">오늘의 빙고</a></p>					
							<p><a href="<c:url value='/kidscafe_map'/>" tabindex="-1">키즈카페 탐방</a></p>
							<p><a href="<c:url value='/children'/>" tabindex="-1">교육시설 알아보기</a></p>
						</c:if>
					</nav>
					<div id="footerLogoBox">
						<a href="<c:url value='/'/>" id="footerLogo" tabindex="-1">
							<img src="<c:url value='/images/logo.png'/>">
						</a>
					</div>
					<hr>
					<div id="infoBox">
						<p>고객센터</p>
						<p>회사정보</p>
						<p>인재채용</p>
						<p>개인정보처리방침</p>
						<p>ⓒ The Code Pirates Group. All rights reserved.</p>
					</div>
				</div>
			</footer>
 			<%-- <script src="<c:url value='/js/layout/background.js'/>"></script> --%>
