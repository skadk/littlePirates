<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유 게시판</title>
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
			<section id="mainBox">
				<div id="sideMenuBox">
					<p><a href="<c:url value='/board'/>">자유게시판</a></p>
					<p><a href="<c:url value='/anonymusBoard'/>">익명게시판</a></p>
					<p><a href="<c:url value='/fleaMarket'/>">나눔장터</a></p>
					
				</div>
				<div id="mainBoardBox">
					<h1>자유게시판 내용</h1>
					<table border="1">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>작성일</th>
						</tr>
						<tr>
							<th>1</th>
							<th><a href="<c:url value='/board/boardText'/>">뻘글ㅅㄱ</a></th>
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
					<div align="left">
						<select name="catgo">
							<option value="title">제목</option>
							<option value="name">글쓴이</option>
							<option value="content">내용</option>
						</select>
						<input type="text" name="search" size="40" required="requied"/>
						<button>검색</button>
					</div>
				</div>
			</section>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>