<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>청결 체크리스트</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/checklist_Clean.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/checklist_Clean.js'/>"></script>
		
	<!-- head -->
	<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
<body>
	<!-- top -->
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<!-- top end-->
	
	<div class="container">
		<div class="checklistClean">청소 빙고를 해봅시다.</div>
		<div class="checklist_Section">
			<img class="checklist_Section_back" src="<c:url value='/image/checkList_Cleanmap.png'/>">
			<div class="father">
				<c:forEach var="i" begin="1" end="9" step="1">
					<div class="child" id="bingoBtn${i}">
					<img class="abc" id="bingoBtnImg${i}" src="<c:url value='/image/M1001.JPG'/>">
					</div>
				</c:forEach>
			</div>
			<div class="completeBox">
			빙고 완료 횟수 표시 : 4개
			</div>
		</div>
		
	<!-- bottom -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	<!-- bottom end-->
	</div>
</body>
</html>