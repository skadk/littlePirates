<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유치원 후기 수정 폼</title>
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
				<form action="/nurseryBoard/nurseryBoardUpdate" method="post">
					<table>
						<h2>어린이집 후기 게시글 작성</h2>
						<tr>
							<th>작성 일자 *</th>
							<td><input type="text" name="nBrdDate" value="${boa.nBrdDate}"
								readonly>
								<input type="hidden" name="nBrdNo" value="${boa.nBrdNo}"></td>
						</tr>

						<tr>
							<th>제목 *</th>
							<td><input type="text" name="nBrdTitle" value="${boa.nBrdTitle }"></td>
						</tr>


						<tr>
							<th>내용</th>
							<td><textarea cols="100" rows="30" name="nBrdText"  value="${boa.nBrdText }">${boa.nBrdText }</textarea></td>
						</tr>
					</table>

					<input class="btn1" type="submit" value="수정">

				</form>

				<!--  bottom -->
				<c:import url="/WEB-INF/views/layout/bottom.jsp" />

			</div>
		</section>
	</div>
</body>
</html>