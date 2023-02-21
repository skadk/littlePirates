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
	<c:forEach var="nur" items="${NList }" varStatus="status">
		<c:if test="${(status.index mod 2) eq 0}">
			<tr>
		</c:if>
		<td><img src="<c:url value='/image/${nur.nurName}.png' />"
			onerror="this.src='<c:url value='/images/babyPirates.png'/>'"
			width="180" height="120"></td>
		<td>${nur.nurName }<br> 주소: ${nur.nurAddress}<br> 유형:
			${nur.nurType}<br> 전화번호: ${nur.nurTel}
		</td>
		<c:if test="${(status.index mod 2) ne 0}">
			</tr>
		</c:if>
	</c:forEach>
</table>
