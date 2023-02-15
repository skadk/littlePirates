<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유 게시판</title>
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
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
				<div class="conwrap pb30">
					<div class="h3group mb30">
						<h3 class="tit">자유게시판</h3>
						<div class="location">
							<span class="depth">홈</span> 
							<span class="depth">커뮤니티</span> 
							<strong class="this">자유게시판</strong>
						</div>
					</div>

					<div class="h4group">
						<h4>이번 주의 자유게시판 인기 글!</h4>
						<div class="period">2023.01.16 ~ 2023.01.22</div>
					</div>
					<div class="board_rank_wrap">
						<div class="rbox">
							<dl>
								<dt>이번 주 추천 가장 많은 글</dt>
								<dd>
									<ol>
										<li>
											<div class="rank">1</div> <a class="tit"> 설 명절 날씨가 엄청 춥다고
												하네요!!</a>
											<div class="recom">99</div>
										</li>
										<li>
											<div class="rank">2</div> <a class="tit"> 산책 다녀오겠습니다. ㅎㅎ</a>
											<div class="recom">91</div>
										</li>
										<li>
											<div class="rank">3</div> <a class="tit"> 좋은 하루 보내세요~~</a>
											<div class="recom">87</div>
										</li>
										<li>
											<div class="rank">4</div> <a class="tit"> 벌써 설이 다가오네요.</a>
											<div class="recom">87</div>
										</li>
										<li>
											<div class="rank">5</div> <a class="tit"> 포인트몰 상품~~ </a>
											<div class="recom">83</div>
										</li>
									</ol>
								</dd>
							</dl>
						</div>
						<div class="cbox">
							<dl>
								<dt>이번 주 댓글 가장 많은 글</dt>
								<dd>
									<ol>
										<li>
											<div class="rank">1</div> <a class="tit"> 피아노 콩쿨 특상받았어요</a>
											<div class="commt">13</div>
										</li>
										<li>
											<div class="rank">2</div> <a class="tit"> 첫 100포인트 당첨!
												축하해주세요~^^</a>
											<div class="commt">11</div>
										</li>
										<li>
											<div class="rank">3</div> <a class="tit"> 고등학교 기숙사 준비가
												만만치않네요</a>
											<div class="commt">8</div>
										</li>
										<li>
											<div class="rank">4</div> <a class="tit"> 뒤늦게 코로나에 걸렸네요
												ㅠㅠ</a>
											<div class="commt">8</div>
										</li>
										<li>
											<div class="rank">5</div> <a class="tit"> 이번달 올출 도전입니다~</a>
											<div class="commt">8</div>
										</li>
									</ol>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				<form name="nForm" id="nForm" method="post">
					<input type="hidden" name="page" id="page" value="1">
					<input type="hidden" name="srchMst_no" id="srchMst_no" value="18">
					<input type="hidden" name="srchCont_no" id="srchCont_no" value="0">
					<input type="hidden" name="srchTab_no" id="srchTab_no" value="">
					<input type="hidden" name="srchSmt_key" id="srchSmt_key" value="">
					<input type="hidden" name="srchTea_no" id="srchTea_no" value="">
					<input type="hidden" name="srchHash_no" id="srchHash_no" value="">
					<input type="hidden" name="srchBest_yn" id="srchBest_yn" value="">

					<!-- 탭목록 유무확인 -->
					<!-- 강사/전문가 검색 유무 확인 -->
					<!-- 10분부모수업체크박스 -->
					<!-- 검색영역 -->
					<!-- 탭영역 -->
					<!-- 해시태그 버튼 검색 -->
					<!-- 자유/정보/익명 -->
					<div class="conwrap">
						<div class="h4group">
							<h4 class="tit">전체글 보기</h4>
							<a href="javascript:;" class="rtn40 e2 fl_r allyn">전체게시물 보기</a>
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
						<div class="tbl_list">
							<table>
								<colgroup>
									<col style="width: 58px;">
									<col style="width: auto;">
									<col style="width: 172px;">
								</colgroup>
								<tbody>
									<c:forEach var="brd" items="${ boardList }">
										<tr>
											<td class="idx"><div class="cate c1">${ brd.brdNo }</div></td>
											<td class="obj">
												<div class="tbox">
													<div class="tit">
														<a href="/board/boardText" class="view" tmp="contents/bod" mn="18" cn="186313">
														 ${ brd.brdTitle }
														 </a>
													</div>
													<div class="comt">
														(${ brd.brdResCount })
													</div>
													<div class="info"></div>
												</div>
												<div class="util">
													<div class="hit">
														조회수 <span class="val">${ brd.brdViewCount }</span>
													</div>
													<div class="recom">
														추천수 <span class="val">${ brd.brdRecommendCount }</span>
													</div>
												</div>
											</td>
											<td class="etc">
												<div class="nick">${ brd.memId }</div>
												<div class="date"><fmt:formatDate value="${ brd.brdDate }" pattern="yyyy-MM-dd"/></div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- 갤러리/카드뉴스 게시판 -->
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
						<input type="hidden" id="login" value="false">
						<!-- 글작성 버튼 -->
						<div class="btn_wrap mt30">
							<div class="fl_c">
								<a href="/board/boardWrite" class="btn50 c3 reg"
									style="width: 240px;" tmp="contents/bod" mn="18" cn="0"><span
									class="write">글작성</span></a>
							</div>
						</div>
					</div>
				</form>

				<script src="/resources/frontoffice/common/js/dev/bod.js"></script>
				<script type="text/javascript">
					NDev.Bod.Init();
				</script>
			</div>
			</section>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>