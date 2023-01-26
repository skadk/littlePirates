<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/kidscafeSearch.js' />"></script>
	<body>
		<table border="1" class="table" id="table">
		<c:forEach var="mapInfo" items="${voList }" varStatus="status">
			<tr>
				<td><img class="review" src="<c:url value='/image/${mapInfo.kcNo}.jpg' />" width="180" height="120"></td>
				<td>${mapInfo.kcName }<br> ${mapInfo.kcAddress}<br>
					운영시간<br> 전화번호<br> 평점
				</td>
			</tr>
		</c:forEach>
	</table>
	</body>
</html>