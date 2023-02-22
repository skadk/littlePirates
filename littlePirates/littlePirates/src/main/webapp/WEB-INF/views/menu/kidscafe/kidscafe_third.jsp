<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
		<meta charset="UTF-8">
		<title>키즈카페</title>
	    <link rel="stylesheet" type="text/css" href="<c:url value='/css/kcReview.css'/>">
	<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>

	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
			<section class="notice">
				<div class="page-title">
					<div class="container">
						<h3>키즈카페 후기</h3>
					</div>
				</div>

				<!-- board seach area -->
				<div id="board-search">
					<div class="container">
						<div class="search-window">
							<form action="">
								<div class="search-wrap">
									<label for="search" class="blind">공지사항 내용 검색</label> 
									<input id="keyword" name="keyword" placeholder="검색어를 입력해주세요." value="">
									<button id="searchBtn" type="submit" class="btn btn-dark">Search</button>
								</div>
								<a href="<c:url value='kidscafeReviewWrite'/>">
									<button type="button" class="hSMJOX">글 작성</button>
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
				</div>

			</section>
			<!-- bottom -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>