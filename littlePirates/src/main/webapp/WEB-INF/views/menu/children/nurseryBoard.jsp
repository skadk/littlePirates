<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어린이집 후기 게시판</title>
<head>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/children.css'/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/children.js' />"></script>
<script src="<c:url value='/js/childrenScroll.js' />"></script>
</head>

<body>
	<div id="wrap">

		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />

		<section>
			<h3>게시판</h3>
			<table>
			<c:forEach var="NBoard" items="${boaList}">
				<tr>
					<td><a id="click" name="click"
						href="<c:url value='/nurseryBoardRead/${boa.nBrdNo}'/>">${boa.nBrdNo}</a></td>
					<td>${board.nBrdNo }</td>
					<td>${board.nBrdTitle }</td>
					<td>${board.nBrdDate }</td>
				</tr>
			</c:forEach>

			</table>
			<br> <br> <a
				href="<c:url value='/nurseryBoardWrite'/>">글쓰기</a>

		</section>

		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>