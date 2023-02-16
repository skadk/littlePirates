<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<footer>
				<div id="footerBox">
					<nav id="footerNav">
						<p>꼬마 해적단</p>
						<p><a href="<c:url value='/board'/>">비밀 기지</a></p>			
						<p><a href="<c:url value='/'/>">항해 일지</a></p>					
						<p><a href="<c:url value='/kidscafe_map'/>">키즈 카페</a></p>
						<p><a href="<c:url value='/checklist'/>">오늘의 빙고</a></p>					
						<p><a href="<c:url value='/children'/>">유치원/어린이집</a></p>
					</nav>
					<a href="<c:url value='/'/>" id="footerLogo" tabindex="-1">
						<img src="<c:url value='/images/logo.png'/>">
					</a>
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