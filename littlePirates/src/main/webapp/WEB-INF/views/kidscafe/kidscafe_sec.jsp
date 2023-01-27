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
					<article id ="box">
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
						<div class="dropdown">
							도/특별시를 선택하세요.<br>
								<select id="browsers" name="browsers">
								    <option value="">선택해주세요</option>
								    <option value="서울특별시">서울특별시</option>
								    <option value="인천광역시">인천광역시</option>
								    <option value="경기도">경기도</option>
								    <option value="강원도">강원도</option>
								    <option value="경상남도">경상남도</option>
								    <option value="경상북도">경상북도</option>
								    <option value="전라남도">전라남도</option>
								    <option value="전라북도">전라북도</option>
								    <option value="충청남도">충청남도</option>
								    <option value="충청북도">충청북도</option>
								    <option value="광주광역시">광주광역시</option>
								    <option value="대구광역시">대구광역시</option>
								    <option value="대전광역시">대전광역시</option>
								    <option value="부산광역시">부산광역시</option>
								    <option value="울산광역시">울산광역시</option>
								    <option value="제주특별자치도">제주특별자치도</option>
								</select>
						</div>
						<br>
						<div id="searchresult">
						</div>
						<div id="firstresult" class="scroll_box">
							<table border="1" class="table" id="table">
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
					</article>
		
				</section>
				<!-- bottom -->
				<c:import url="/WEB-INF/views/layout/bottom.jsp" />
			</div>
		</body>
</html>