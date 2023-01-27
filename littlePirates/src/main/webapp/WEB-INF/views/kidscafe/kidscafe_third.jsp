<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>키즈카페 간단히</title>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/kidscafe.css'/>">
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/kidscafe_third.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/kidscafe_third.js' />"></script>
		
	</head>
		<body>
			<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
				<section>
					<article>
						<div id="selectbox">
							<div id="clickbox">
								<ul>
									<li id="select_map">
									<a href="<c:url value='/kidscafe_map'/>">지도로 보기</a>
									</li>
									<li id="gather">
									<a href="<c:url value='/kidscafe_sec'/>">간편하게 보기</a>
									</li>
								</ul>
							</div>
						</div>
					</article>
					
					<article id="ie">
						<select name="addressRegion" id="addressRegion1"></select>
    					<select name="addressDo" id="addressDo1"></select>
    					<select name="addressSiGunGu" id="addressSiGunGu1"></select>
					</article>
		
				</section>
				<!-- bottom -->
				<c:import url="/WEB-INF/views/layout/bottom.jsp" />
			</div>
		</body>
</html>