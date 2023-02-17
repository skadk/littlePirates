<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>키즈카페 후기 수정 폼</title>
		<!-- css -->
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/kcReviewU.css'/>">
		<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp" />
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
	
			<section>
				<div class="layout">
					<form action="/kidscafeReview/kidscafeReviewUpdate"
						method="post">
						<table>
							<div class="title">
							<h2>키즈카페 후기 게시글 작성</h2>
							</div>
							<tr>
								<th>작성 일자 *</th>
								<td><input type="text" id="textDate" name="kcrDate" value="${kcr.kcrDate}" readonly> 
								<input type="hidden" name="kcrNo" value="${kcr.kcrNo}"></td>
							</tr>
	
							<tr>
								<th>제목 *</th>
								<td><input type="text" id="textTitle" name="kcrTitle" value="${kcr.kcrTitle }"></td>
							</tr>
	
							<tr>
								<th>내용</th>
								<td><textarea cols="100" rows="22" name="kcrText" value="${kcr.kcrText }">${kcr.kcrText }</textarea></td>
							</tr>
						</table><br><br><br>
	
						<input class="btn" type="submit" value="수정">
	
					</form><br><br><br>
	
	
				</div>
			</section>
			<!--  bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</div>
	</body>
</html>