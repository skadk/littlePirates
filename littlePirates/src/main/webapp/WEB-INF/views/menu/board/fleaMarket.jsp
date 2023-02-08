<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눔장터페이지</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/button.css'/>">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
</head>
<body>
	<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
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
							<span class="depth">홈</span> 
							<span class="depth">커뮤니티</span> 
							<strong class="this">나눔장터 게시판</strong>
						</div>
					</div>
					<div class="conwrapFleaMarket">
					<!-- 전체글보기 박스, 전체게시물 보기 버튼 -->
						<div class="h4group">
							<h4 class="tit">전체글 보기</h4>
							<a href="javascript:;" class="rtn40 e2 fl_r allyn">전체게시물 보기</a>
						</div>
					<!-- 위 버튼 -->
					<div align="left">
						<button class="custom-btn btn-3">
							<span>나눔&장터</span>
						</button>
						<button class="custom-btn btn-3">
							<span>나눔</span>
						</button>
						<button class="custom-btn btn-3">
							<span>장터</span>
						</button>
					</div>
					<!-- 검색영역 -->
						<div class="data_srch_wrap bdt_n ">
							<div class="slt_box">
								<select name="srchKey" style="width: 189px;">
									<option value="" selected="">전체</option>
									<option value="cont_nm">제목</option>
									<option value="cont_contents">내용</option>
									<option value="mem_nm">작성자</option>
								</select>
							</div>
							<div class="ipt_box">
								<input type="text" id="srchWord" name="srchWord" class="ipt" value="" placeholder="검색어를 입력해 주세요."> 
								<input type="button" id="srchBtn" class="btn" value="검색">
							</div>
						</div>
					<div id="boardBox">
						<div class="boardPrdBox">
							<a href="<c:url value='/fleaMarket/fleaMarketText'/>"> 
							<img src="<c:url value='/images/0112.jpg'/>" class="fleaMarketImg">
							</a>
							<div class="boardTextBox">
								<span class="noto-sb">나눔/장터</span>
								<div>제목</div> 
								<div>내용</div>
								<div>찜 || 댓글 수</div>
								<div>글쓴이 조회수</div>
							</div>
						</div>
						<div class="boardPrdBox">asdfasdf</div>
						<div class="boardPrdBox">asdfasdf</div>
						<div class="boardPrdBox">adsfasdf</div>
						<div class="boardPrdBox">asdfasdf</div>
						<div class="boardPrdBox">asdfasdf</div>
						<div class="boardPrdBox">asdfasdf</div>
						<div class="boardPrdBox">adsfasfasdf</div>
						<div class="boardPrdBox">adsfasfasdf</div>
						<div class="boardPrdBox">adsfasfasdf</div>
						<div class="boardPrdBox">adsfasfasdf</div>
						<div class="boardPrdBox">adsfasfasdf</div>
					</div>
					<!-- 페이징 -->
						<div class="pagination">
							<div class="paging">
								<a href="javascript:NDev.Site.Page(1);" class="page_first">
									<span class="hide">처음</span>
								</a> 
								<a href="javascript:NDev.Site.Page(1);"	class="page_prev">
									<span class="hide">이전</span>
								</a> 
								<span class="page"> <a href="javascript:;" class="on"><span>1</span></a>
									<a href="javascript:NDev.Site.Page(2);"><span>2</span></a> 
									<a href="javascript:NDev.Site.Page(3);"><span>3</span></a> 
									<a href="javascript:NDev.Site.Page(4);"><span>4</span></a> 
									<a href="javascript:NDev.Site.Page(5);"><span>5</span></a> 
									<a href="javascript:NDev.Site.Page(6);"><span>6</span></a> 
									<a href="javascript:NDev.Site.Page(7);"><span>7</span></a> 
									<a href="javascript:NDev.Site.Page(8);"><span>8</span></a> 
									<a href="javascript:NDev.Site.Page(9);"><span>9</span></a> 
									<a href="javascript:NDev.Site.Page(10);"><span>10</span>
								</a>
								</span> 
								<a href="javascript:NDev.Site.Page(2);" class="page_next">
									<span class="hide">다음</span>
								</a>
								<a href="javascript:NDev.Site.Page(8017);" class="page_last">
									<span class="hide">끝</span>
								</a>
							</div>
						</div>
						<!-- 글작성 버튼 -->
						<div class="btn_wrap mt30">
							<div class="fl_c">
								<a href="javascript:;" class="btn50 c3 reg"
									style="width: 240px;" tmp="contents/bod" mn="18" cn="0"><span
									class="write">글작성</span></a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>




