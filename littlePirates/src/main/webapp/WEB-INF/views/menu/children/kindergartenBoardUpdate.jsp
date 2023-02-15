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

.title {
	margin-top: 50px;
}
.btn1{
border-radius: 10px;
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
				<form action="/kindergartenBoard/kindergartenBoardUpdate"
					method="post">
					<table>
						<div class="title">
						<h2>유치원 후기 게시글 작성</h2>
						</div>
						<tr>
							<th>작성 일자 *</th>
							<td><input type="text" name="kBrdDate"
								value="${boa.kBrdDate}" readonly> <input type="hidden"
								name="kBrdNo" value="${boa.kBrdNo}"></td>
						</tr>

						<tr>
							<th>제목 *</th>
							<td><input type="text" name="kBrdTitle"
								value="${boa.kBrdTitle }"></td>
						</tr>


						<tr>
							<th>내용</th>
							<td><textarea cols="100" rows="30" name="kBrdText"
									value="${boa.kBrdText }">${boa.kBrdText }</textarea></td>
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