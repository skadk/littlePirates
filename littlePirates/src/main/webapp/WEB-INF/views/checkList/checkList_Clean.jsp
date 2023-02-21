<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크리스트 BINGO</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/checklist_Clean.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/checklist/checklist_Clean.js'/>"></script>
<script src="<c:url value='/js/checklist/checked.js'/>"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<div class="checklist_Section">
			<div class="checklistClean">체 크 리 스 트 B I N G O</div>
			<img class="checklist_Section_back"
				src="<c:url value='/images/checkList_LH_Back.png'/>">

			<div class="father" id="father">
				<c:forEach var="i" begin="0" end="8">
					<div class="child" id="bingoBtn${i}">
						<img id="bingoBtnImg${i}"
							src="<c:url value='/images/${vo.getChlNo(i)}.png '/>">
						<div class="textBox" id="textBox${i}">${vo.getChlText(i)}</div>
						<%-- 						<audio id="bingoAudio${i}"></audio> --%>
					</div>
					<div class="childCheck">
						<img class="childCheckImg" id="childCheckImg${i+1}"
							src="<c:url value='/images/Good3.JPG'/>">
					</div>
				</c:forEach>
			</div>
			<div class="completeBox">
				<div class="countText">빙고 완료 횟수</div>
				<div class="bingoCount" id="bingoCount"></div>
			</div>
		</div>
	</div>
</body>
</html>