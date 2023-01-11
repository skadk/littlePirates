<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장터 게시판</title>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<section>
				<div id="sideMenuBox">
					<p><a href="<c:url value='/board'/>">자유게시판</a></p>
					<p><a href="<c:url value='/anonymusBoard'/>">익명게시판</a></p>
					<p><a href="<c:url value='/freePresent'/>">나눔게시판</a></p>
					<p><a href="<c:url value='/fleaMarket'/>">장터게시판</a></p>
				</div>
				<div id="boardBox">
					장터게시판 내용
					<table border="1">
						<tr>
							<th>게시글 번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성 시간</th>
						</tr>
						<tr>
							<th>1</th>
							<th><a href="<c:url value='/fleaMarket/fleaMarketText'/>">뻘글ㅅㄱ</a></th>
							<th>7조_화이팅</th>
							<th>2023-01-10</th>
						</tr>
	<%-- 					<c:forEach var="brd" items="${ brdList }">
							<tr><td>${ brd.boardNo }</td>
								<td>${ brd.memId }</td>
								<td>${ brd.boardText }</td>
								<td><fmt:formatDate value="${brd.boardDate }" pattern="yy-MM-dd HH:mm"/></td></tr>
						</c:forEach> --%>
					</table>
				</div>
			</section>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>