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
</head>



<body>

	<!-- top -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<section>

		<ul class="menu">
			<li><a href="#">MENU1</a>
				<ul class="submenu">
					<li><a href="#">submenu01</a></li>
					<li><a href="#">submenu02</a></li>
					<li><a href="#">submenu03</a></li>
					<li><a href="#">submenu04</a></li>
					<li><a href="#">submenu05</a></li>
				</ul></li>
			<li><a href="#">MENU2</a>
				<ul class="submenu">
					<li><a href="#">submenu01</a></li>
					<li><a href="#">submenu02</a></li>
					<li><a href="#">submenu03</a></li>
					<li><a href="#">submenu04</a></li>
					<li><a href="#">submenu05</a></li>
				</ul></li>
			<li><a href="#">MENU3</a>
				<ul class="submenu">
					<li><a href="#">submenu01</a></li>
					<li><a href="#">submenu02</a></li>
					<li><a href="#">submenu03</a></li>
					<li><a href="#">submenu04</a></li>
					<li><a href="#">submenu05</a></li>
				</ul></li>
			<li><a href="#">MENU4</a>
				<ul class="submenu">
					<li><a href="#">submenu01</a></li>
					<li><a href="#">submenu02</a></li>
					<li><a href="#">submenu03</a></li>
					<li><a href="#">submenu04</a></li>
					<li><a href="#">submenu05</a></li>
				</ul></li>
			<li><a href="#">MENU5</a>
				<ul class="submenu">
					<li><a href="#">submenu01</a></li>
					<li><a href="#">submenu02</a></li>
					<li><a href="#">submenu03</a></li>
					<li><a href="#">submenu04</a></li>
					<li><a href="#">submenu05</a></li>
				</ul></li>
		</ul>


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
					시/군를 선택하세요

					<div class="dropdown-1">

						<button class="dropbtn-1">
							<span class="dropbtn_icon-1">more_horiz</span> <span
								class="dropbtn_content-1">Select a city...</span> <span
								class="dropbtn_click-1"
								style="font-family: Material Icons; font-size: 16px; color: #3b3b3b; float: right;"
								onclick="dropdown()-1">arrow_drop_down</span>
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
			<div class="middle-right">

				<div class="middle-right-1">
					<span>A 유치원 <br /> 정보
					</span>

				</div>
				<div class="middle-right-2">
					<span>B 유치원 <br /> 정보
					</span>
				</div>
				<div class="middle-right-3">
					<span>C 유치원 <br /> 정보
					</span>
				</div>

			</div>

			<!-- INFORMATION 2 -->
			<div class="middle-right-a">

				<div class="middle-right-1-1">
					<span>A 어린이집 <br /> 정보
					</span>
				</div>
				<div class="middle-right-2-1">
					<span>B 어린이집 <br /> 정보
					</span>
				</div>
				<div class="middle-right-3-1">
					<span>C 어린이집 <br /> 정보
					</span>
				</div>

			</div>
		</div>


	</section>

	<!-- bottom -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />


</body>
</html>