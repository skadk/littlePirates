<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>꼬마 해적단</title>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainIndex.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
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
					<article id="article1">
						<div id="slideShowBox">
							<img src="<c:url value='/image/treasureMap.png'/>" class="slideImage">
						</div>
					</article>
					<article id="article2">
						<div id="videoBox">
							<div class="video" id="video1">
								<iframe width="560" height="315" src="https://www.youtube.com/embed/dMM-m0jaFYw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
							</div>
							<div class="video" id="video2">
								<iframe width="560" height="315" src="https://www.youtube.com/embed/uXGhDOLugvc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
							</div>
							<div class="video" id="video3">
								<iframe width="560" height="315" src="https://www.youtube.com/embed/pQPdmcLfoFE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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