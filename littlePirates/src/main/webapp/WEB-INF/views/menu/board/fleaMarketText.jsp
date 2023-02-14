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

		<div id="fleaMarketMainBox">
			<div id="mainTwoBox">
				<div id="fleaMarketTextImgBox">
					<h1>상제정보</h1>
					<img src="/image/0112.jpg">
				</div>
				<%-- <table id="boardBox">
				<tr>
					<td><img src="/image/0112.jpg" width="340" height="300">
					</td>
					<td>--%>
				<div id="fleaMarketTextTableBox">
					<table border="1" width="340px" height="400px">
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
									<input type="hidden" name="productId"> <input
										type="submit" value="♡">
								</form> <a href="<c:url value='/fleaMarket'/>">물품목록</a>
							</td>
						</tr>
					</table>
				</div>
			</div>

			<!-- 댓글 -->
			<div class="replyBox">
				<input type="text" placeholder="댓글을 입력하세요" id="replyTextBox" />
				<button id="replyButton">입력</button>
			</div>
		</div>
		<div class="reply_view">
			<h3>댓글목록</h3>
			<div>
				<div>
					<b>
						작성자
					</b>
				</div>
				<div>
					작성내용
				</div>
				<div>
					2023.01.16
				</div>

			</div>

			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</div>
</body>
</html>