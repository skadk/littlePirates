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
		<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
	</head>
<body>
	
 	<div class="container">
  		<div class="eatHeader">
  			 <c:forEach var="vo" items="${voList}" end="0">
		    ${vo.memId}님의 체크리스트 현황
		    </c:forEach>
  		</div>
  			<div class="checklist_Section">
 				<div class="dropdown">
				    <!-- The trigger element -->
				    <div class="dropdown_trigger">카테고리</div>				
				    <!-- The content -->
				    <div class="dropdown_content" id="check1">체크리스트 명</div>
				    <div class="dropdown_content" id="check2">회차</div>				   	
				</div>
				<div class="search"><input type="text"
				 id="SearchChecklist" placeholder="검색" >
				 <button class="searchBtn">검색</button>
				</div>
 				<div class="searchResult">
 				<table>
 					<tr><th>회차</th><th>체크리스트 명</th><th>체크리스트 달성 날짜</th></tr>
 					<c:forEach var="vo" items="${voList}" varStatus="status">
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo1}</td><td>${vo.chlNo1_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo2}</td><td>${vo.chlNo2_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo3}</td><td>${vo.chlNo3_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo4}</td><td>${vo.chlNo4_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo5}</td><td>${vo.chlNo5_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo6}</td><td>${vo.chlNo6_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo7}</td><td>${vo.chlNo7_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo8}</td><td>${vo.chlNo8_Checked}</td></tr>
 						<tr><td>${vo.chhNo}</td><td>${vo.chlNo9}</td><td>${vo.chlNo9_Checked}</td></tr> 
 					</c:forEach>
 				</table>
 				</div>
 				<div></div>
 
   			</div>
	</div> 

</body>
</html>