<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>그림 일기</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/paintDiary/paintDiary.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/paintDiary/paintDiary.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
			
			<h1>그림 업로f드</h1>

			<form id="paintFileForm">
				파일 : <input type="file" id="paintFile" name="paintFile">
				<input type="submit" value="upload">
			</form>
			
			<h1>그림 보여주기</h1>
			<div id="imageBox"></div>
			<c:forEach var="entry" items="${entries}">
				<div>
					<img src="${entry.image}" alt="업로드한 그림">
					<p>${entry.description}</p>
				</div>
			</c:forEach>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>