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
		<!-- background -->
		<c:import url="/WEB-INF/views/layout/background.jsp"/>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<c:if test="${not empty sessionScope.sid }">
				<section>
					<article id="article1">
						<div id="slideShowBox">
							<img src="<c:url value='/image/treasureMap.png'/>" class="slideImage">
						</div>
						꼬마 해적단 출항이다~<br>
						닻을 내려라~~
					</article>
					<article id="article2">
						메인 인덱스입니다.<br>
						안녕하세요 test입니다<br>
						화이팅
					</article>
				</section>
			</c:if>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
 		<script src="<c:url value='/js/background.js'/>"></script>
</html>