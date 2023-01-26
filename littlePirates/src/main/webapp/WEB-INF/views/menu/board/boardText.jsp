<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유게시물</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<!-- background -->
		<c:import url="/WEB-INF/views/layout/background.jsp"/>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div id="mainBox">
				<table border="1" width="1000">
					<tr>
						<th>게시글 번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>조회수</th>
						<th>작성 내용</th>
						<th>작성 시간</th>
					</tr>
					<c:forEach var="brd" items="${ brdList }">
						<tr>
							<td>${ brd.brdNo }</td>
							<td>${ brd.memId }</td>
							<td>${ brd.brdTitle }</td>
							<td>${ brd.brdViewCnt }</td>
							<td>${ brd.brdText }</td>
							<td><fmt:formatDate value="${brd.brdDate }" pattern="yy-MM-dd HH:mm"/></td>							
						</tr>
					</c:forEach>
				</table>
			</div>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>