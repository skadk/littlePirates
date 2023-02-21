<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>꼬마 해적단</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainIndex.css'/>">
		<script src="<c:url value='/js/slideShow.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<c:if test="${ empty sessionScope.sid }">
			<!-- kidsNav -->
			<c:import url="/WEB-INF/views/layout/kidsNav.jsp"/>
				<section>
				</section>
			</c:if>
			<c:if test="${ not empty sessionScope.sid }">
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
				<section>
					<article class="article" id="article1">
						<div id="slideShowBox">
							<div id="prevNextButtonBox">
								<img id="prevButton" src="<c:url value='/images/prevButton.png'/>">
								<img id="nextButton" src="<c:url value='/images/nextButton.png'/>">
							</div>
							<div id="slideShow">
								<div id="slidePanel">
									<img src="<c:url value='/images/키즈카페 안전수칙.jpg'/>" class="slideImage">
									<img src="<c:url value='/images/어린이날.png'/>" class="slideImage">
									<img src="<c:url value='/images/여성가족부.png'/>" class="slideImage">
									<img src="<c:url value='/images/응급처치.png'/>" class="slideImage">
								</div>
								<div id="controlButtonBox">
									<img src="<c:url value='/images/controlButton2.png'/>" class="controlButton">
									<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
									<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
									<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
								</div>
							</div>
						</div>
					</article>
					<article id="article3">
						<p>우리집 피카소</p>
						<div id="paintingBox">
							<div class="painting" id="painting1">
								<img src="<c:url value='/images/아이그림1.jpg'/>">
							</div>
							<div class="painting" id="painting2">
								<img src="<c:url value='/images/아이그림5.jpg'/>">
							</div>
							<div class="painting" id="painting3">
								<img src="<c:url value='/images/아이그림9.jpg'/>">
							</div>
						</div>
					</article>
					<article class="article" id="article2">
						<p>키즈 인기 영상</p>
						<div id="videoBox">
							<div class="video" id="video1">
								<iframe src="https://www.youtube.com/embed/dMM-m0jaFYw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen>
								</iframe>
							</div>
							<div class="video" id="video2">
								<iframe src="https://www.youtube.com/embed/uXGhDOLugvc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen>
								</iframe>
							</div>
							<div class="video" id="video3">
								<iframe src="https://www.youtube.com/embed/pQPdmcLfoFE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen>
								</iframe>
							</div>
						</div>
					</article>
				</section>
			</c:if>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
<%--  		<script src="<c:url value='/js/background.js'/>"></script> --%>
</html>