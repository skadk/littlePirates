<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>키즈카페 간단히</title>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/kidscafe_sec.css'/>">
 		<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/kidscafe_sec.js' />"></script>
	</head>
		<body>
			<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
				<section>
					<div id ="box">
						<div class="as_inner">
						<div class="as_hgroup">
							<h2 class="tit">키즈카페</h2>
						</div>
						<nav id="lnb" class="lnb">
							<div id="sideSubBox">
								<div class="on">
									<a href="/kidscafe_map">지도로 보기</a>
								</div>
								<div class="on">
									<a href="/kidscafe_sec">간편하게 보기</a>
								</div>
							</div>
						</nav>						
					</div>
					
					<div id="ie">
						<div class="dropdown">
								<select name="browsers" id="browsers"></select>
								<select name="gugun" id="gugun"></select>
						</div>
						<br>
						<div id="searchresult">
						</div>
						<div id="firstresult" class="scroll_box">
							<table border="1" class="table" id="table">
								<tr>
									<th>내부 사진</th>
									<th>상세정보</th>
								</tr>	
								<c:forEach var="mapInfo" items="${voList }" varStatus="status">
									<c:if test="${(status.index mod 2) eq 0}">
										<tr>
									</c:if>
									<td><img src="<c:url value='/images/${mapInfo.kcNo}.jpg' />"
										width="180" height="120"></td>
									<td>${mapInfo.kcName }<br> ${mapInfo.kcAddress}<br>
										운영시간<br> 전화번호<br> 평점
									</td>
									<c:if test="${(status.index mod 2) ne 0}">
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
					</div>
					
				</div>
				</section>
				<!-- bottom -->
				<c:import url="/WEB-INF/views/layout/bottom.jsp" />
			</div>
		</body>
</html>