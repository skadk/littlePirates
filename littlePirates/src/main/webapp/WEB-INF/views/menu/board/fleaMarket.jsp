<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눔장터페이지</title>

<!-- CSS  -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/button.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/board.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/fleaMarket.css'/>">

<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
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
					<div class="conwrapFleaMarket">
						<!-- 전체글보기 박스, 전체게시물 보기 버튼 -->
						<div class="h4group">
							<h4 class="tit">전체글 보기</h4>
							<a href="javascript:;" class="rtn40 e2 fl_r allyn">전체게시물 보기</a>
						</div>
						<!-- 위 버튼 -->
						<!-- <div class="buttonA">
							<button class="custom-btn btn-3">
								<span>나눔&장터</span>
							</button>
							<button class="custom-btn btn-3">
								<span>나눔</span>
							</button>
							<button class="custom-btn btn-3">
								<span>장터</span>
							</button>
						</div> -->
						<!-- 검색영역 -->
						<div class="data_srch_wrap bdt_n ">
							<div class="slt_box">
								<select name="srchKey" style="width: 189px;">
									<option value=" selected=">전체</option>
									<option value="cont_nm">제목</option>
									<option value="cont_contents">내용</option>
									<option value="mem_nm">작성자</option>
								</select>
							</div>
							<div class="ipt_box">
								<input type="text" id="srchWord" name="srchWord" class="ipt"
									value="" placeholder="검색어를 입력해 주세요."> <input
									type="submit" id="srchBtn" class="btn" value="검색">
							</div>
						</div>
						<%-- <c:set var="i" value="0" />
							<c:set var="j" value="3" /> --%>

						<div id="boardBox">
							<c:forEach var="fl" items="${flList }">
								<a href="<c:url value='/fleaMarket/fleaMarketText/${fl.flNo}'/>">
									<div class="card">
										<!-- 카드 헤더 -->
										<div class="card-header">
											<div class="card-header-is_closed">
												<div class="card-header-text">${fl.flCategory}</div>
											</div>
											<img src="<c:url value='/images/${fl.flImageName}' />"
												width="100%" height="245px">
										</div>
										<!--  카드 바디 -->
										<div class="card-body">
											<!--  카드 바디 헤더 -->
											<div class="card-body-header">
												<h1 id="cardTitle">${fl.flTitle}</h1>
												<p class="card-body-nickname">${fl.memId}</p>
												<p class="card-body-description">${fl.flText}</p>
											</div>
											<!--  카드 바디 본문 -->
										</div>
										<!--  카드 바디 푸터 -->
										<div class="card-body-footer">
											<hr
												style="margin-bottom: 10px; opacity: 0.5; border-color: #EF5A31">
											<i class="icon icon-view_count"></i>조회수 : ${fl.flViewCount} <i
												class="icon icon-comments_count"></i>댓글수 : ${fl.flResCount}
											<i class="reg_date"></i>
											<fmt:formatDate value="${frd.flDate}" pattern="yyyy-MM-dd" />${frd.flDate}
										</div>
									</div>
								</a>
							</c:forEach>
						</div>
						<!-- 페이징 -->
						<div class="pagination">
							<div class="paging">
								<a href="javascript:NDev.Site.Page(1);" class="page_first">
									<span class="hide">처음</span>
								</a> <a href="javascript:NDev.Site.Page(1);" class="page_prev">
									<span class="hide">이전</span>
								</a> <span class="page"> <a href="javascript:;" class="on"><span>1</span></a>
									<a href="javascript:NDev.Site.Page(2);"><span>2</span></a> <a
									href="javascript:NDev.Site.Page(3);"><span>3</span></a> <a
									href="javascript:NDev.Site.Page(4);"><span>4</span></a> <a
									href="javascript:NDev.Site.Page(5);"><span>5</span></a> <a
									href="javascript:NDev.Site.Page(6);"><span>6</span></a> <a
									href="javascript:NDev.Site.Page(7);"><span>7</span></a> <a
									href="javascript:NDev.Site.Page(8);"><span>8</span></a> <a
									href="javascript:NDev.Site.Page(9);"><span>9</span></a> <a
									href="javascript:NDev.Site.Page(10);"><span>10</span> </a>
								</span> <a href="javascript:NDev.Site.Page(2);" class="page_next">
									<span class="hide">다음</span>
								</a> <a href="javascript:NDev.Site.Page(8017);" class="page_last">
									<span class="hide">끝</span>
								</a>
							</div>
						</div>
						<!-- 글작성 버튼 -->
						<div class="btn_wrap mt30">
							<div class="fl_c">

								<c:choose>
									<c:when test="${empty sessionScope.sid}">
										<a
											href="/member/login?returnUrl=<c:url value='/fleaMarket/fleaMarketWriteForm' />"
											class="btn50 c3 reg" style="width: 240px;" tmp="contents/bod">
											<span class="write"> 글작성 </span>
										</a>
									</c:when>
									<c:otherwise>
										<a href="<c:url value='/fleaMarket/fleaMarketWriteForm' />"
											class="btn50 c3 reg" style="width: 240px;" tmp="contents/bod"> 
											<span class="write">글작성</span></a>
									</c:otherwise>
								</c:choose>

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




