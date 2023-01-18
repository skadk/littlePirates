<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>식습관 체크리스트</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/checklist_Eat.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>

	</head>
<body>
	
 	<div class="container">
  		<div class="eatHeader">
  		식습관 체크리스트
  		</div>
  			<div class="checklist_Section">
  			<img src="<c:url value='/image/checkList_Eat.png'/>" class="checklist_Section_back">
			<div class="map2">
				<c:forEach var="i" begin="1" end="10" step="1">
				<div class="eat_Image" id="MM${i}"></div>	
				</c:forEach>
			</div>
  			</div>
	</div> 
	
	
	
	
</body>
</html>