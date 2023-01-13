<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>예절 체크리스트</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/checklist_Manner.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/checklist_Manner.js'/>"></script>	
	<!-- head -->
	<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
<body>
	<!-- top -->
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<!-- top end-->
		
	<div class="container">
		<div class="mannerHeader">
		<h2>예절 체크리스트</h2>
		<div class="createChecklist">랜덤 체크리스트 생성</div>
		</div>
		<div class="checklist_Section">
			<img src="<c:url value='/image/checkList_Mannermap.png'/>" class="checklist_Section_back">
				<div class="mannerList">
					<c:forEach var="i" begin="1" end="5" step="1">
					   	<div class="black_bg">
						</div>
						<div class="modal_wrap">
						    <div class="modal_close">
						    <a href="#"></a>
						    </div>
						    <div class="modal_ContentBox">
						    	<div class="mannerName">체크리스트명</div>
						        <div class="mannerEx">체크리스트내용</div>
						        <div class="completion">체크완료</div>
						    </div>
						</div>					
					<div class="mannerList_image" id="modal_btn${i}">					
					</div>
					</c:forEach>
				</div>
		</div>
		
	<!-- bottom -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	<!-- bottom end-->
	</div>
	
</body>
</html>