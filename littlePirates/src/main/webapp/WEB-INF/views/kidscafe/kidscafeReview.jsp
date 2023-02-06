<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<table border="1" class="table" id="table">
		<c:forEach var="reviewInfo" items="${reviewList }" varStatus="status">
			<c:if test="${(status.index mod 2) eq 0}">
			<tr>
			</c:if>
				<td>${reviewInfo.kcrNo }</td>
				<td>${reviewInfo.memId }</td>
				<td>${reviewInfo.kcrText}</td>
				<td>${reviewInfo.kcrDate}</td>
			<c:if test="${(status.index mod 2) ne 0}">	
			</tr>
			</c:if>
		</c:forEach>
	</table>
	</body>
</html>