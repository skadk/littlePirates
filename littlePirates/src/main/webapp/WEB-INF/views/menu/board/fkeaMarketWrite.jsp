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
					<form id="fileUploadForm" method="post"
						action="<c:url value='/fleaMarket/fleaMarkWrite'/>"
						enctype="multipart/form-data">
						<div class="conwrapFleaMarket">
							<div class="board_write_wrap">
								<div class="section">
									<div class="hgroup">
										<p class="tit">제목</p>
									</div>
									<div class="boxed">
										<input type="text" name="flTitle"
											id="flTitle" title="제목" maxlength="50"
											placeholder="제목을 입력해 주세요."><!-- cont_nm -->
									</div>
								</div>
								<div class="section">
									<div class="hgroup">
										<p class="tit">내용</p>
									</div>
									<div>
										<div id="mainTwoBox">
											<div id="fleaMarketImgUpload"></div>

											<div id="fleaMarketTextTableBox">
												<table border="1" width="340px" height="402px">
													<tr align="center">
														<td width="100px" height="30px">상품 이름</td>
														<td><input type="text" name="flName"
															id="flName" title="제목" maxlength="50"
															placeholder="상품명을 입력해주세요."></td><!-- cont_mm -->
													</tr>
													<tr align="center">
														<td width="100px" height="30px">분류</td>
														<td><input type="radio" name="flCategory" value="free">나눔 제품 
															<input type="radio" name="flCategory" value="flea">판매 제품
														</td>
													</tr>
													<tr align="center">
														<td width="100px" height="30px">가격</td>
														<td><input type="text" id="flPrice" name="flPrice" value="0"
															class="form-control" placeholder="판매 제품만 입력해주세요.">
														</td>
													</tr>
													<tr align="center">
														<td colspan='2' width="100%" height="20px">상세내용</td>
													</tr>
													<tr align="center">
														<td colspan='2'><textarea id="flText"
																name="flText" cols="50" rows="2"
																class="form-control" placeholder="상세내용을 입력해 주세요."></textarea>
																<!-- form-control -->
														</td>
													</tr>
													<tr align="center">
														<td width="100px" height="30px">상품 이미지</td>
														<td><input type="file" name="fileUpload" id="flImageName" class="form-control"></td>
														<!-- productImg -->
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 글등록 버튼 -->
							<div class="btn_wrap mt30">
								<div class="fl_c">
									<!-- <a href="/fleaMarket" class="btn50 c3 reg" style="width: 240px;"
									tmp="contents/bod" mn="18" cn="0"><span class="write">글등록</span></a> -->
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




