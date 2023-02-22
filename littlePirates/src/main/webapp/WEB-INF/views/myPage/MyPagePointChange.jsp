<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>포인트 변경 내역</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/pointchange.css'/>">
		
	</head>
	<body>
	<div id="wrap">
	<!-- top -->
	<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<form id="pointForm" method="post" action="<c:url value='/myPage/pointList'/>">
			<h1>포인트 변경 내역</h1>
			<br>
			<table border="1" width="1000">
				<tr background-color="skyblue">
					<th>포인트 변경 내역 번호</th>
					<th>사용자</th>
					<th>포인트 추가</th>
					<th>포인트 사용</th>
					<th>포인트 변경 날짜</th>
					<th>변경 내역</th>
				</tr>
				<c:forEach var="pt" items="${ ptList }">
					<tr><td>${ pt.pointChangeNo }</td>
						<td>${ pt.memId }</td>
						<td>${ pt.pointAdd }</td>
						<td>${ pt.pointUsed }</td>
						<td><fmt:formatDate value="${pt.pointDate }" pattern="yy-MM-dd HH:mm"/></td>
						<td>${ pt.pointDescription }</td></tr>
				</c:forEach>
			</table>	
		</form>
	</div>	
	</body>
	<footer>
        <!-- bottom -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
    </footer>
</html>
