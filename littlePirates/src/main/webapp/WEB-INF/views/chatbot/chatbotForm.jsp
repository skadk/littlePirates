<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>챗봇</title>
		<link rel="stylesheet"  type="text/css" href="<c:url value='/css/chatbot/chatbot.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/chatbot/chatbot.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- Header -->
			<div id="chatHeader">
				<span>챗봇</span>
				<button id="btnClose">X</button>
			</div>
			
			<!-- 채팅 답변 출력 -->
			<div id="chatBox">
			</div>
			
			<form id="chatbotForm">
				<input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요"><br><br>
				<input type="submit" value="결과 확인">
			</form><br><br>
			
			<a href="<c:url value='/'/>">index 페이지로 이동</a><br><br>
		</div>
	</body>
</html>