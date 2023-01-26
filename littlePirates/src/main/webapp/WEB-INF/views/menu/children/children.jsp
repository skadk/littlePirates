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
	href="<c:url value='/css/children.css'/>">

<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/children.js' />"></script>
<script src="<c:url value='/js/childrenScroll.js' />"></script>
<script src="<c:url value='/js/childrenPaging.js' />"></script>
</head>



<body>

	<!-- top -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<section>

		<!-- MIDDLE -->

		<div class="middle">

			<!-- SCROLL1 -->
			<div class="scroll">
				<div class="dropdown-label">
					도/시를 선택하세요

					<div class="dropdown">

						<button class="dropbtn">
							<span class="dropbtn_icon">more_horiz</span> <span
								class="dropbtn_content">Select a city...</span> <span
								class="dropbtn_click"
								style="font-family: Material Icons; font-size: 16px; color: #3b3b3b; float: right;"
								onclick="dropdown()">arrow_drop_down</span>
						</button>

						<div class="dropdown-content">
							<div class="region" onclick="showMenu(this.innerText)">서울</div>
							<div class="region" onclick="showMenu(this.innerText)">강원도</div>
							<div class="region" onclick="showMenu(this.innerText)">경기도</div>
							<div class="region" onclick="showMenu(this.innerText)">경상도</div>
							<div class="region" onclick="showMenu(this.innerText)">전라도</div>
							<div class="region" onclick="showMenu(this.innerText)">충청도</div>
							<div class="region" onclick="showMenu(this.innerText)">제주도</div>
						</div>

					</div>
				</div>

				<!-- SCROLL2 -->
				<div class="dropdown-label-1">
					시/구/군를 선택하세요

					<div class="dropdown-1">

						<button class="dropbtn-1">
							<span class="dropbtn_icon-1">more_horiz</span> <span
								class="dropbtn_content-1">Select a city...</span> <span
								class="dropbtn_click-1"
								style="font-family: Material Icons; font-size: 16px; color: #3b3b3b; float: right;"
								onclick="dropdown2()">arrow_drop_down</span>
						</button>

						<div class="dropdown-content-1">
							<div class="region-1" onclick="showMenu-1(this.innerText)">서울</div>
							<div class="region-1" onclick="showMenu-1(this.innerText)">강원도</div>
							<div class="region-1" onclick="showMenu-1(this.innerText)">경기도</div>
							<div class="region-1" onclick="showMenu-1(this.innerText)">경상도</div>
							<div class="region-1" onclick="showMenu-1(this.innerText)">전라도</div>
							<div class="region-1" onclick="showMenu-1(this.innerText)">충청도</div>
							<div class="region-1" onclick="showMenu-1(this.innerText)">제주도</div>
						</div>

					</div>
				</div>
			</div>

			<!-- INFORMATION 1 -->

			<a href="<c:url value='/kindergarten'/>">
				
					<table border="1" class="table">
						<c:forEach var="kd" items="${KList }">
							<tr>
								<td><img src="<c:url value='/image/${kd.kdName}.png' />"
									width="180" height="120"></td>
								<td>${kd.kdName }<br> ${kd.kdAddress}<br>
									${kd.kdType}<br> ${kd.kdTel}
								</td>
							</tr>
						</c:forEach>
					</table>
			</a>
			<!-- INFORMATION 2 -->
			<a href="<c:url value='/nursery'/>">
				<table border="1" class="table2">
					<c:forEach var="nur" items="${NList }">
						<tr>
							<td><img src="<c:url value='/image/${nur.nurName}.jpg' />"
								width="180" height="120"></td>
							<td>${nur.nurName }<br> ${nur.nurAddress}<br>
								${nur.nurType}<br> ${nur.nurTel}
							</td>
						</tr>
					</c:forEach>


				</table>
			</a>

		</div>


	</section>

	<!-- bottom -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />


</body>
</html>