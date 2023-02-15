<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nursery</title>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/nBoardSearch.js'/>"></script>

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/nursery.css'/>">

<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />

<body>
	<div id="wrap">

		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
		<section>
		
			<section class="notice">
				<div class="page-title">
					<div class="container">
						<h3>어린이집 후기</h3>
					</div>
				</div>

				<!-- board seach area -->
				<div id="board-search">
					<div class="container">
						<div class="search-window">
							<a href="<c:url value='/nurseryBoardWrite'/>">
								<button type="button" class="write">Write</button>
							</a>
							<form action="">
								<div class="search-wrap">
									<label for="search" class="blind">공지사항 내용 검색</label> <input
										id="keyword" name="keyword" placeholder="검색어를 입력해주세요."
										value="">
									<button id="searchBtn" type="submit" class="btn btn-dark" >Search</button>
								</div>
							</form>
						</div>
					</div>
				</div>

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

			</section>

			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</section>
	</div>
</body>
</html>