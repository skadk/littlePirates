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
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "children?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
</head>



<body>
	<div id="wrap">

		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
		
		
		<section>
			
			<!-- SCROLL1 -->
			<!--			 <div class="scroll">
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
-->
			<!-- MIDDLE -->

			<div class="middle">

				<!-- BoardSelect -->
				<div class="boardSelect"></div>
				<div class="kBoard">
					<a href="<c:url value='/kindergartenBoard'/>"><h2>유치원 게시판</h2>
					</a>
				</div>
				<div class="nBoard">
					<a href="<c:url value='/nurseryBoard'/>"><h2>어린이집 게시판</h2> </a>
				</div>






				<!-- INFORMATION 1 -->
				<div class="kin">
					<a href="<c:url value='/kindergartenBoard'/>"><h2>유치원</h2> </a>
				</div>
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
				<!-- INFORMATION 2 -->
				<div class="nur">
					<a href="<c:url value='/nurseryBoard'/>"><h2>어린이집</h2></a>
				</div>
				<div id="list" style="float: right;">
					<select id="cntPerPage" name="sel" onchange="selChange()">
						<option value="5"
							<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄
							보기</option>
						<option value="10"
							<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄
							보기</option>
						<option value="15"
							<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄
							보기</option>
						<option value="20"
							<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄
							보기</option>
					</select>
				</div>
				<!-- 옵션선택 끝 -->

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
				
				
			</div>
				<div>
					/*
		<div style="display: block; text-align: center;">
					<c:if test="${paging.startPage != 1 }">
						<a
							href="/children?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a
									href="/children?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a
							href="/children?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>

					<br />

				</div>*/
		</div>
		</section>

		

		<!-- bottom -->
<%-- 		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> --%>

	</div>
</body>
</html>
