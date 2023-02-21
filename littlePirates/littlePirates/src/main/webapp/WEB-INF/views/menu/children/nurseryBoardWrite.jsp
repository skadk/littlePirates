<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>어린이집 후기 게시판 작성</title>
<head>

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/kindergarten.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/ChildrenBoardWrite.css'/>">
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
				<form action="/nurseryBoard/Write" method="post">
					<table>
						<div class="title">
							<h1>유치원 후기 게시글 작성</h1>
						</div>
						<tr>
							<th>작성 일자 *</th>
							<td><input type="text" name="nBrdDate" value="${time1}"
								readonly></td>
						</tr>
						
						
						<tr>
							<th>제목 *</th>
							<td><input type="text" name="nBrdTitle"></td>
						</tr>
						

						<tr>
							<th>내용</th>
							<td><textarea cols="100" rows="30" name="nBrdText"></textarea></td>
						</tr>
					</table><br><br>

					<input class="btn" type="submit" value="등록"> <input
						class="btn" type="reset" value="다시작성하기"> <input
						class="btn" type="button" value="취소"
						onclick="javascript:history.back()">
				</form><br>


			</div>
		</section>
				<!--  bottom -->
				<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>