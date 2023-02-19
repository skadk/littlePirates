<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유치원 후기 게시판 작성</title>
<head>

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/kindergarten.css'/>">

<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />

<style>
td {
	text-align: left !important;
}

.btn1 {
	margin-top: 15px;
	width: 120px;
	height: 35px;
	font-size: 17px;
}

.m1{
	margin-top: 50px;
}

tr{
	padding-top: 20px;
}
</style>

</head>

<body>

	<div id="wrap">


		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />

		<section>
			<div class="layout">
				<form action="/nurseryBoard/Write" method="post">
					<table>
						<h2>어린이집 후기 게시글 작성</h2>

						<div class="m1">
						<tr>
							<th>작성 일자 *</th>
							<td><input type="text" name="nBrdDate" value="${time1}"
								readonly></td>
						</tr>
						</div>
						
						<tr>
							<th>제목 *</th>
							<td><input type="text" name="nBrdTitle"></td>
						</tr>
						

						<tr>
							<th>내용</th>
							<td><textarea cols="100" rows="30" name="nBrdText"></textarea></td>
						</tr>
					</table>

					<input class="btn1" type="submit" value="등록"> <input
						class="btn1" type="reset" value="다시작성하기"> <input
						class="btn1" type="button" value="취소"
						onclick="javascript:history.back()">
				</form>

				<!--  bottom -->
				<c:import url="/WEB-INF/views/layout/bottom.jsp" />

			</div>
		</section>
	</div>
</body>
</html>