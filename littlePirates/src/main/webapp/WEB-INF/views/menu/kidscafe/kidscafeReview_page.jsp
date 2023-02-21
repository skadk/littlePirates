<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<table class="board-table">
	<thead>
		<tr>
			<th scope="col" class="th-num">번호</th>
			<th scope="col" class="th-title">제목</th>
			<th scope="col" class="th-date">등록일</th>
		</tr>
	</thead>
	<tbody>
		<input type="hidden" id="cur_page" value="${cur_page}" /><br>
		<input type="hidden" id="total_count" value="${total_count }" /><br>
		<c:forEach var="reviewinfo" items="${reviewList }">
			<tr>
				<td><a id="click" name="click"
					href="<c:url value='/kidscafeReview/kidscafeReviewRead/${reviewinfo.kcrNo }'/>">${reviewinfo.kcrNo }</a></td>
				<td><a id="click" name="click"
					href="<c:url value='/kidscafeReview/kidscafeReviewRead/${reviewinfo.kcrNo }'/>">${reviewinfo.kcrTitle }</a></td>

				<td>${reviewinfo.kcrDate }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
