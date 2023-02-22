<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눔장터게시물</title>

<!-- CSS  -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/board.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/fleaMarket.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/summernote/summernote-lite.css'/>">

<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/fleaMarket.js'/>"></script>
<script src="<c:url value='/js/summernote/summernote-lite.js'/>"></script>
<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js'/>"></script>
</head>
<body>
	<div id="wrap">
		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
		<section id="mainBox">
			<!-- 사이드메뉴 -->
			<aside id="aside">
				<div class="as_inner">
					<div class="as_hgroup">
						<h2 class="tit">커뮤니티</h2>
					</div>
					<nav id="lnb" class="lnb">
						<div id="sideSubBox">
							<div class="on">
								<a href="/board">자유게시판</a>
							</div>
							<div class="on">
								<a href="/anonymusBoard">익명게시판</a>
							</div>
							<div class="on">
								<a href="/fleaMarket">나눔장터 게시판</a>
							</div>
						</div>
					</nav>
				</div>
			</aside>
			<div id="contents">
				<div id="mainBoardBox">
					<div class="h3group mb30">
						<h3 class="tit">나눔장터 게시판</h3>
						<div class="location">
							<span class="depth">홈</span> <span class="depth">커뮤니티</span> <strong
								class="this">나눔장터 게시판</strong>
						</div>
					</div>
					<form id="boardForm" name="boardForm" method="post"
						action="<c:url value='/board/brdWrite'/>">
						<div class="conwrapFleaMarket">
							<div class="board_write_wrap">
								<div class="section">
									<div class="hgroup">
										<p class="tit">제목</p>
									</div>
									<div class="boxed">
										<input type="text" name="brdTitle" id="flTitle" title="제목"
											maxlength="50" placeholder="제목을 입력해 주세요.">
									</div>
								</div>
								<div class="section">
									<div class="hgroup">
										<p class="tit">내용</p>
									</div>
									<div id="write_area">
											<textarea id="summernote" name="brdText"></textarea>
									</div>
								</div>
							</div>
							<!-- 글등록 버튼 -->
							<div class="btn_wrap mt30">
								<div class="fl_c">
									<input type="submit" class="btn50 c3 reg" style="width: 240px;"
										value="글등록">
								</div>
							</div>

						</div>
					</form>
				</div>
			</div>
		</section>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>




