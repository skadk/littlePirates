<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/kidscafeSearch.js' />"></script>
	<body>
		<table border="1" class="table" id="table">
			<tr>
				<th>가게명</th>
				<th>상세정보</th>
			</tr>	
		<c:forEach var="mapInfo" items="${voList }" varStatus="status">
			<tr>
				<td><img class="review" src="<c:url value='/images/${mapInfo.kcNo}.jpg' />" width="180" height="110"></td>
				<td>${mapInfo.kcName }<br> ${mapInfo.kcAddress}<br>
					운영시간<br> 전화번호<br> 평점
				</td>
			</tr>
		</c:forEach>
	</table>
	</body>
</html>