<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>키즈카페 후기 게시판</title>
			<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
			<script src="<c:url value='/js/paging/kcpage.js' />"></script>
			<script src="<c:url value='/js/kcSearch.js'/>"></script>
			<link rel="stylesheet" type="text/css"
				href="<c:url value='/css/kcReview.css'/>">
			<!-- 	head -->
			<c:import url="/WEB-INF/views/layout/head.jsp" />
		</head>
<style>
li {
	display: inline-block;
	margin: 10px;
}
</style>
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
						<h2>키즈카페 후기 게시판</h2>
					</div>
				</div>

				<!-- board seach area -->
				<div id="board-search">
					<div class="container">
						<div class="search-window">
							<form>
								<div class="search-wrap">
									<input id="kckeyword" name="kckeyword"
										placeholder="검색어를 입력해주세요." value="">
									<button id="searchBtn" type="submit" class="btn btn-dark">Search</button>
								</div>
								<a href="<c:url value='kidscafeReviewWrite'/>">
								<!-- 	<button type="button" class="hSMJOX">글 작성</button> --> 
									<c:choose>
										<c:when test="${empty sessionScope.sid}">
											<a href="/member/login?returnUrl=<c:url value='/kidscafeReviewWrite'/>">
												<button type="button" class="hSMJOX">글 작성</button>
											</a>
										</c:when>
										<c:otherwise>
											<a href="<c:url value='/kidscafeReviewWrite'/>">
												<button type="button" class="hSMJOX">글 작성</button>
											</a>
										</c:otherwise>
									</c:choose>
								</a>
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
								<input type="hidden" id="cur_page" value="${cur_page}" />
								<br>
								<input type="hidden" id="total_count" value="${total_count }" />
								<br>
								<c:forEach var="reviewinfo" items="${reviewList }">
									<tr>
										<td><a id="click" name="click"
											href="<c:url value='/kidscafeReview/kidscafeReviewRead/${reviewinfo.kcrNo }'/>">${reviewinfo.kcrNo }</a></td>
										<td><a id="click" name="click"
											href="<c:url value='/kidscafeReview/kidscafeReviewRead/${reviewinfo.kcrNo }'/>">${reviewinfo.kcrTitle }</a></td>

										<td>${reviewinfo.kcrDate }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div>
						<nav>
							<br>
							<ul class="pagination" id="pagination"></ul>
						</nav>
					</div>
				</div>
			</section>
			
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</section>
	</div>
</body>
</html>