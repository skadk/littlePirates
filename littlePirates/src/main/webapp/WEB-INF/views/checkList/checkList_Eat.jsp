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
		<script src="<c:url value='/js/checklist_Eat.js'/>"></script>
	</head>
<body>
	
 	<div class="container">
  		<div class="eatHeader">
  		OOO님의 체크리스트 달성 현황
  		</div>
  			<div class="checklist_Section">
 				<div class="dropdown">
				    <!-- The trigger element -->
				    <div class="dropdown_trigger">카테고리</div>				
				    <!-- The content -->
				    <div class="dropdown_content" id="check1">예절</div>
				    <div class="dropdown_content" id="check2">식사</div>
				   	<div class="dropdown_content" id="check3">청결</div>
				   	<div class="dropdown_content" id="check4">질서및정리정돈</div>				   	
				</div>
				<div class="search"><input type="text"
				 id="SearchChecklist" placeholder="검색" >
				 <button>검색</button>
				</div>
 				<div class="searchResult">
 				<table>
 					<tr><th>체크리스트명</th><th>달성 횟수</th><th>총 횟수</th><th>달성률</th></tr>
 					<tr><td>1</td><td>2</td><td>3</td><td>4</td></tr>
 				</table>
 				</div>
 				<div></div>
 
   			</div>
	</div> 
 
 
  		<%-- 	<img src="<c:url value='/image/checkList_Eat.png'/>" class="checklist_Section_back"> 
				<div></div>
			</div>
 				<c:forEach var="i" begin="1" end="10" step="1">
				<div class="eat_Image" id="MM${i}"></div>	
				</c:forEach> --%>
	
</body>
</html>