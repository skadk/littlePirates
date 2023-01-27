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
		<script src="<c:url value='/js/checklist/checklist_Manner.js'/>"></script> 	
		<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
	</head>
<body>
		
	<div class="container2">
		<div class="mannerHeader2">
		활동 체크 리스트
		<div class="createChecklist2">체크리스트 랜덤 재 생성</div>
		</div>
		<div class="checklist_Section2">
			<img src="<c:url value='/images/checkList_Manner_Back.png'/>" class="checklist_Section_back2">
				<div class="mannerList2">
					<c:forEach var="vo" items="${voList}" varStatus="status">
					   	<div class="black_bg2">
						</div>
						<div class="modal_wrap2">
						    <div class="modal_close2">
						    	<a href="#"></a>
						    </div>
					    </div>					
					<div class="mannerList2_image" id="modal_btn2${status.count}">
						<img id="mannerListImg${status.count}" 
						src="<c:url value='/image/${vo.chlNo}.png'/>">					
					</div>
					</c:forEach>
				</div>
		</div>
		

	</div>
	
</body>
</html>
