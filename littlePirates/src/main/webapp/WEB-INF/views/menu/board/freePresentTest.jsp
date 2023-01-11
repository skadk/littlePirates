<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>테스트페이지</title>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<section>
				<div id="sideMenuBox">
					<p><a href="<c:url value='/board'/>">자유게시판</a></p>
					<p><a href="<c:url value='/anonymusBoard'/>">익명게시판</a></p>
					<p><a href="<c:url value='/freePresent'/>">나눔게시판</a></p>
					<p><a href="<c:url value='/fleaMarket'/>">장터게시판</a></p>
				</div>
			<div id="test">
				<h1>나눔게시판 내용</h1>
					<div id="boardBox">
						<div class="boarTextBox">
						rkskekfk
						</div>
						<div class="boarTextBox">
						asdfasdf
						</div>
						<div class="boarTextBox">
						asdfasdf
						</div>
						<div class="boarTextBox">
						adsfasdf
						</div>
						<div class="boarTextBox">
						asdfasdf
						</div>
						<div class="boarTextBox">
						asdfasdf
						</div>
						<div class="boarTextBox">
						asdfasdf
						</div>
						<div class="boarTextBox">
						adsfasfasdf
						</div>
						<div class="boarTextBox">
						adsfasfasdf
						</div>
						<div class="boarTextBox">
						adsfasfasdf
						</div>
					</div>
				</div>
			</section>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>