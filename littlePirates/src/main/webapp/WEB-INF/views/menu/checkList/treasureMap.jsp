<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>부모와 함께 하는 체크리스트</title>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/treasureMap.css'/>">
	</head>
	<body>
		<div id="treasureMapBox">
			<div id="imageBox">
				<img src="<c:url value='/image/treasureMap.png'/>">
			</div>
			<div class="treasure" id="treasure1">
				보물1
			</div>
			<div class="treasure" id="treasure2">
				보물2
			</div>
			<div class="treasure" id="treasure3">
				보물3				
			</div>
		</div>
	</body>
</html>