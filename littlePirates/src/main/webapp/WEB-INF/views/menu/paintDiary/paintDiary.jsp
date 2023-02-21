<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>항해 일지</title>
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
			<div id="paintingWall">
				<div id="paintingWallInfo">
					<h1>항해 일지</h1>
					<p>지금까지 아이와 함께한 모험의 기록</p>
				</div>
				<div class="gallery">
				    <div class="main_image">
				        <img src="images/아이그림1.jpg" />
				    </div>
				
				    <div class="selection_image">
				        <div class="thumb">
				        	<div class="overlay"></div>
				        	<img src="images/아이그림1.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림2.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림3.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림4.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림5.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림6.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림7.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림8.jpg"/>
				        </div>
				        <div class="thumb">
			                <div class="overlay"></div>
			                <img src="images/아이그림9.jpg"/>
				        </div>
				    </div>
				</div>
			</div>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>