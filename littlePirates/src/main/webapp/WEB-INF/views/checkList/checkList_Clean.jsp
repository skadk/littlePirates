<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>체크리스트 BINGO</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/checklist_Clean.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/checklist/checklist_Clean.js'/>"></script>
		<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
	</head>
<body>
	
	<div class="container">

		<div class="checklist_Section">
				<div class="checklistClean">
					체 크 리 스 트 B I N G O
				</div>
			<img class="checklist_Section_back" src="<c:url value='/images/checkList_LH_Back.png'/>">

			<div class="father" id="father">
			<c:forEach var="i" begin="0" end="8">
				<%-- <h2>${vo.getChlNo(i)}</h2> --%>
				<div class="child" id="bingoBtn${i}">
 						<img id="bingoBtnImg${i}" src="<c:url value='/images/${vo.getChlNo(i)}.png '/>">
						<div class="textBox" id="textBox${i}">${vo.getChlText(i)}</div>
				</div>
				<div class="childCheck">
					<img class="childCheckImg" id="childCheckImg${i+1}" src="<c:url value='/image/Good3.JPG'/>">
				</div>		
			</c:forEach>
		<%-- 		<c:forEach var="i" begin="0" end="8">
 					<div class="child" id="bingoBtn${i}">
 						<img id="bingoBtnImg${i}" src="<c:url value='/image/${vo.chlNo}.png '/>">
						<div class="textBox" id="textBox${i}">${vo.chlText}</div>
					</div>							

				</c:forEach> --%>
			</div>
			<div class="completeBox">
				<img id="bingoComplete1" src="<c:url value='/images/Good2.JPG'/>">
				<img id="bingoComplete2" src="<c:url value='/images/Good2.JPG'/>">
				<img id="bingoComplete3" src="<c:url value='/images/Good2.JPG'/>">
			</div>
		</div>		

	</div>
</body>
</html>