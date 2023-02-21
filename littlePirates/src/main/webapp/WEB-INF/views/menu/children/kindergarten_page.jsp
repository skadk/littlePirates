<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<table border="1" class="table" id="table">
	<tr>
		<th>PHOTO</th>
		<th>INFORMATION</th>
		<th>PHOTO</th>
		<th>INFORMATION</th>
	</tr>
	<input type="hidden" id="cur_page" value="${cur_page}" />
	<br>
	<input type="hidden" id="total_count" value="${total_count }" />
	<br>
	<c:forEach var="kd" items="${KList }" varStatus="status">
		<c:if test="${(status.index mod 2) eq 0}">
			<tr>
		</c:if>
		<td><img src="<c:url value='/image/${kd.kdName}.png' />"
			onerror="this.src='<c:url value='/images/childPirates.png'/>'"
			width="180" height="120"></td>
		<td>${kd.kdName }<br> 주소: ${kd.kdAddress}<br> 유형:
			${kd.kdType}<br> 전화번호: ${kd.kdTel}
		</td>
		<c:if test="${(status.index mod 2) ne 0}">
			</tr>
		</c:if>
	</c:forEach>
</table>