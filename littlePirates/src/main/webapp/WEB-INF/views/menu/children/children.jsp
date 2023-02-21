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
	href="<c:url value='/css/kidscafe_sec.css'/>">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/nursery.css'/>">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/paging/childrenPage.js' />"></script>

</head>
<style>
th {
	background-color: rgb(244, 87, 87);
}

td {
	background-color: rgb(255, 244, 233);
}

li {
	display: inline-block;
	margin: 10px;
}

#box {
	background-color: rgb(255, 244, 233);
	margin-top: 50px;
}
#board-search{
background-color: rgb(255, 244, 233);
}

</style>

<body>
	<div id="wrap">

		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />


		<section>
			<div id="box">
				<div class="as_inner">
					<div class="as_hgroup">
						<h2 class="tit">해적단</h2>
					</div>
					<nav id="lnb" class="lnb">
						<div id="sideSubBox">
							<div class="on">
								<img src="<c:url value='/images/babyPirates.png' />" width="55"
									height="55"> <a href="/children">어린이집 정보</a>
							</div>
							<div class="on">
								<img src="<c:url value='/images/childPirates.png' />" width="55"
									height="55"> <a href="/kindergartenInfo">유치원 정보</a>
							</div>
							<div class="on">
								<img src="<c:url value='/images/babyPirates.png' />" width="55"
									height="55"> <a href="/nurseryBoard">어린이집 후기</a>
							</div>
							<div class="on">
								<img src="<c:url value='/images/childPirates.png' />" width="55"
									height="55"> <a href="/kindergartenBoard">유치원 후기</a>
							</div>
						</div>
					</nav>
				</div>

				<!-- MIDDLE -->

				<div id="ie">
					<div id="board-search">
						<div class="container">
							<div class="search-window">
								<form action="">
									<div class="search-wrap">
										<label for="search" class="blind">어린이집 검색</label> <input
											id="keyword" name="keyword" placeholder="검색어를 입력해주세요."
											value="">
										<button id="searchBtn" type="submit" class="btn btn-dark">Search</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<br>
					<div id="searchresult"></div>
					<div id="firstresult" class="scroll_box">
						<table border="1" class="table" id="table">
							<tr>
								<th>PHOTO</th>
								<th>INFORMATION</th>
								<th>PHOTO</th>
								<th>INFORMATION</th>
							</tr>
							<input type="hidden" id="cur_page" value="${cur_page}" />
							<br>
							<input type="hidden" id="total_count" value="${total_count }" />
							<br>
							<c:forEach var="nur" items="${NList }" varStatus="status">
								<c:if test="${(status.index mod 2) eq 0}">
									<tr>
								</c:if>
								<td><img src="<c:url value='/image/${nur.nurName}.png' />"
									onerror="this.src='<c:url value='/images/babyPirates.png'/>'"
									width="180" height="120"></td>
								<td>${nur.nurName }<br> 주소: ${nur.nurAddress}<br>
									유형: ${nur.nurType}<br> 전화번호: ${nur.nurTel}
								</td>
								<c:if test="${(status.index mod 2) ne 0}">
									</tr>
								</c:if>
							</c:forEach>
						</table>
					</div>
					<div>
						<nav>
							<br>
							<ul class="pagination" id="pagination"></ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>