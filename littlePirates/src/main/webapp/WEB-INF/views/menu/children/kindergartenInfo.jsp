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
<%-- <link rel="stylesheet" type="text/css"
	href="<c:url value='/css/children.css'/>"> --%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/kidscafe_sec.css'/>">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/children.js' />"></script>
<script src="<c:url value='/js/childrenScroll.js' />"></script>
<script src="<c:url value='/js/kidscafe_sec.js' />"></script>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "children?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
</head>
<style>
th {
background-color: rgb(244,87,87);
}
td{
background-color: rgb(255,244,233);
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
								<img src="<c:url value='/images/images/babyPirates.png' />"
									width="55" height="55"> <a href="/children">어린이집
									정보</a>
							</div>
							<div class="on">
								<img src="<c:url value='/images/images/childPirates.png' />"
									width="55" height="55"> <a href="/kindergartenInfo">유치원
									정보</a>
							</div>
							<div class="on">
								<img src="<c:url value='/images/images/babyPirates.png' />"
									width="55" height="55"> <a href="/nurseryBoard">어린이집
									후기</a>
							</div>
							<div class="on">
								<img src="<c:url value='/images/images/childPirates.png' />"
									width="55" height="55"> <a href="/kindergartenBoard">유치원
									후기</a>
							</div>
						</div>
					</nav>
				</div>

				<!-- MIDDLE -->

				<div id="ie">
					<div class="dropdown">
						<select name="browsers" id="browsers"></select> <select
							name="gugun" id="gugun"></select>
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
							<c:forEach var="kd" items="${KList }" varStatus="status">
								<c:if test="${(status.index mod 2) eq 0}">
									<tr>
								</c:if>
								<td><img src="<c:url value='/image/${kd.kdName}.png' />"
									onerror="this.src='<c:url value='/images/images/babyPirates.png'/>'"
									width="180" height="120"></td>
								<td> ${kd.kdName }<br> 주소: ${kd.kdAddress}<br>
									유형: ${kd.kdType}<br> 전화번호: ${kd.kdTel}
								</td>
								<c:if test="${(status.index mod 2) ne 0}">
									</tr>
								</c:if>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</section>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>