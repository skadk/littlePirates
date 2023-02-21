<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>children</title>
<head>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/kindergarten.css'/>">

<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />

</head>



<body>
	<div id="wrap">



		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="board" items="${boaList }">
							<tr>
								<td><a id="click" name="click"
									href="<c:url value='/nurseryBoard/nurseryBoardRead/${board.nBrdNo }'/>">${board.nBrdNo }</a></td>
								<td><a id="click" name="click"
									href="<c:url value='/nurseryBoard/nurseryBoardRead/${board.nBrdNo }'/>">${board.nBrdTitle }</a></td>

								<td>${board.nBrdDate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>




	</div>
</body>
</html>