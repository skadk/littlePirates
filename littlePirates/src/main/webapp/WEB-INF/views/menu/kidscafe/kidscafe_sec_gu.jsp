<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>
	<table border="1" class="table" id="table">
		<tr>
			<th>내부 사진</th>
			<th>상세정보</th>
			<th>내부 사진</th>
			<th>상세정보</th>
		</tr>
		<input type="hidden" id="s_cur_page" value="${cur_page}" /><br>
		<input type="hidden" id="s_total_count" value="${total_count }" /><br>
		<input type="hidden" id="s_type" value="gu" />
		<c:forEach var="mapInfo" items="${voList }" varStatus="status">
			<c:if test="${(status.index mod 2) eq 0}">
			<tr>
			</c:if>
				<td><img src="<c:url value='/images/${mapInfo.kcNo}.jpg' />" onerror="this.src='<c:url value='/images/logo.png'/>'"
					width="180" height="120"></td>
				<td>가게명: ${mapInfo.kcName }<br> 
					주소: ${mapInfo.kcAddress}<br>
					운영시간: 10:00 ~ 21:00 <br> 
					전화번호: ${mapInfo.kcphone }
				</td>
			<c:if test="${(status.index mod 2) ne 0}">	
			</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>