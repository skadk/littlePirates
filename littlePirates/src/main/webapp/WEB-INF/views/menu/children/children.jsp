<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>children</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/children.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<script src="<c:url value='/js/children.js' />"></script>
		<script src="<c:url value='/js/childrenScroll.js' />"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
			<section>
				<ul class="menu">
					<li><a href="#">MENU1</a>
						<ul class="submenu">
							<li><a href="#">submenu01</a></li>
							<li><a href="#">submenu02</a></li>
							<li><a href="#">submenu03</a></li>
							<li><a href="#">submenu04</a></li>
							<li><a href="#">submenu05</a></li>
						</ul>
					</li>
					<li><a href="#">MENU2</a>
						<ul class="submenu">
							<li><a href="#">submenu01</a></li>
							<li><a href="#">submenu02</a></li>
							<li><a href="#">submenu03</a></li>
							<li><a href="#">submenu04</a></li>
							<li><a href="#">submenu05</a></li>
						</ul>
					</li>
					<li><a href="#">MENU3</a>
						<ul class="submenu">
							<li><a href="#">submenu01</a></li>
							<li><a href="#">submenu02</a></li>
							<li><a href="#">submenu03</a></li>
							<li><a href="#">submenu04</a></li>
							<li><a href="#">submenu05</a></li>
						</ul>
					</li>
					<li><a href="#">MENU4</a>
						<ul class="submenu">
							<li><a href="#">submenu01</a></li>
							<li><a href="#">submenu02</a></li>
							<li><a href="#">submenu03</a></li>
							<li><a href="#">submenu04</a></li>
							<li><a href="#">submenu05</a></li>
						</ul>
					</li>
					<li><a href="#">MENU5</a>
						<ul class="submenu">
							<li><a href="#">submenu01</a></li>
							<li><a href="#">submenu02</a></li>
							<li><a href="#">submenu03</a></li>
							<li><a href="#">submenu04</a></li>
							<li><a href="#">submenu05</a></li>
						</ul>
					</li>
				</ul>
				<!-- MIDDLE -->
				<div class="middle">
					<!-- SCROLL1 -->
					<div class="scroll">
						<div class="dropdown-label">
						도/시를 선택하세요
							<div class="dropdown">
								<button class="dropbtn">
									<span class="dropbtn_icon">more_horiz</span>
									<span class="dropbtn_content">Select a city...</span>
									<span class="dropbtn_click" style="font-family: Material Icons; font-size: 16px; color: #3b3b3b; float: right;" onclick="dropdown()">arrow_drop_down</span>
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
						<div class="middle-right">
							<div class="middle-right-1">
		
								<div class="kindergartenImg1">
									<span>A유치원 사진 </span>
								</div>
								<div class="kindergartenInfo1">
									<span>A유치원 정보 <br />평점 <br />전화번호
									</span>
								</div>
		
							</div>
							<div class="middle-right-2">
								<div class="kindergartenImg2">
									<span>B유치원 사진 </span>
								</div>
								<div class="kindergartenInfo2">
									<span>B유치원 정보 <br />평점 <br />전화번호
									</span>
								</div>
							</div>
							<div class="middle-right-3">
								<div class="kindergartenImg3">
									<span>C유치원 사진 </span>
								</div>
								<div class="kindergartenInfo3">
									<span>C유치원 정보 <br />평점 <br />전화번호
									</span>
								</div>
							</div>
		
						</div>
					</a>
		
					<!-- INFORMATION 2 -->
					<a href="<c:url value='/nursery'/>">
						<div class="middle-right-a">
							<table border="1" class="table">
								<c:forEach var="nur" items="${ NList }">
									<tr>
										<td><img src="<c:url value='/image/${ nur.nurNo}.jpg' />" width="180" height="120"></td>	
										<td>${ nur.nurName }<br>
											${ nur.nurAddress }<br>
											${ nur.nurType }<br>											
											운영시간<br>
											전화번호<br>
											평점
										</td>
									</tr>
								</c:forEach>
							</table>
							<!-- <div class="middle-right-1-1">
								<div class="childrenImg1">
									<span>A어린이집 사진 </span>
								</div>
								<div class="childrenInfo1">
									<span>A어린이집 정보 <br />평점 <br />전화번호
									</span>
								</div>
							</div>
							<div class="middle-right-2-1">
								<div class="childrenImg2">
									<span>B어린이집 사진 </span>
								</div>
								<div class="childrenInfo2">
									<span>B어린이집 정보 <br />평점 <br />전화번호
									</span>
								</div>
							</div>
							<div class="middle-right-3-1">
								<div class="childrenImg3">
									<span>C어린이집 사진 </span>
								</div>
								<div class="childrenInfo3">
									<span>C어린이집 정보 <br />평점 <br />전화번호
									</span>
								</div>
							</div> -->
						</div>
					</a>
				</div>
			</section>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</div>
	</body>
</html>