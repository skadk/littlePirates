<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눔장터게시물</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
</head>
<body>
	<div id="wrap">
		<!-- top -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />

		<div id="mainBox">
			<div id="fleaMarketTextImgBox">
				<h1>상제정보</h1>
				<img src="/image/0112.jpg">
			</div>
			<%-- <table id="boardBox">
				<tr>
					<td><img src="/image/0112.jpg" width="340" height="300">
					</td>
					<td>--%>
			<table id="fleaMarketTextTableBox" border="1">
				<tr align="center">
					<td>사품명</td>
					<td>유모차</td>
				</tr>
				<tr align="center">
					<td>가격</td>
					<td>30만원</td>
				</tr>
				<tr align="center">
					<td>상품소개</td>
					<td>아이가 너무 커서 싸게 팝니다</td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<form name="form1" method="post"
							action="${path}/shop/cart/insert.do">
							<input type="hidden" name="productId" value="${vo.productid}">
							<input type="submit" value="♡">
						</form> <a href="<c:url value='/fleaMarket'/>">물품목록</a>
					</td>
				</tr>
			</table>
			<div>
				
			</div>

		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>