<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>익명게시물</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
	</head>
	<body>
		<div id="wrap">
		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
		<div id="contents">
			<div class="conwrap">
				<div class="h3group">
					<h3 class="tit">익명게시판</h3>
					<div class="location">
						<span class="depth">홈</span> <span class="depth">커뮤니티</span><strong
							class="this">익명게시판</strong>
					</div>
				</div>
				<div class="viewbody">
					<div class="hgroup">
						<div class="tit">메주가 도착했네요.</div>
						<div class="util">
							<div class="name">익명</div>
							<div class="date">2023.01.26</div>
							<div class="hit">조회수 : 0</div>
						</div>
					</div>

					<div class="content">
						<!-- 내용 -->
						<div class="editor ck-content">
							<p>주문한 메주가 도착했네요.</p>
							<p>올해는 된장을 직접 담가보려고요.</p>
							<p>좀 힘들겠지만 직접 만드니 더 맛있을거라 생각해요.</p>
							<p>벌써부터 기대됩니다.</p>
						</div>
					</div>
					<!-- 파일첨부 -->

					<div class="bottom">
					<div class="utils">
						<div class="function">
								<button type="button" class="scrap actionBtn " onclick="$(this).toggleClass('on');" data-seq="188677" data-tt_tb="MNT.BOD.TA" data-tt_key="cont_no" data-tt_dir="contents/bod" data-mst_no="18" data-tmp="scrap" data-cntid="scrapCnt">
										<span class="ico">스크랩</span><span class="val" id="scrapCnt">0</span>
									</button>
									<!-- 활성화 addClass : on -->
								<button type="button" class="recom actionBtn " onclick="$(this).toggleClass('on');" data-seq="188677" data-tt_tb="MNT.BOD.TA" data-tt_key="cont_no" data-tt_dir="contents/bod" data-mst_no="18" data-tmp="recommend" data-cntid="rdnCnt">
										<span class="ico">추천</span><span class="val" id="rdnCnt">24</span>
									</button>
									<!-- 활성화 addClass : on -->
								<button type="button" class="report reportBtn " data-seq="188677">
										<span class="ico">신고</span><span class="val" id="repCnt">0</span>
									</button>
									<!-- 활성화 addClass : on -->
								</div>
							<ul class="snslist ">
								<li class="kakaostory"><a href="javascript:NDev.SNS.Share(' 메주가 도착했네요.', '188677', '18', 'cont_no', 1);"><span class="hide">카카오스토리</span></a></li>
								<li class="facebook"><a href="javascript:NDev.SNS.Share(' 메주가 도착했네요.', '188677', '18', 'cont_no', 0);"><span class="hide">페이스북</span></a></li>
								<li class="blog"><a href="javascript:NDev.SNS.Share(' 메주가 도착했네요.', '188677', '18', 'cont_no', 4);"><span class="hide">네이버블로그</span></a></li>
								<li class="band"><a href="javascript:NDev.SNS.Share(' 메주가 도착했네요.', '188677', '18', 'cont_no', 2);"><span class="hide">네이버밴드</span></a></li>
								<li class="urlcopy"><a href="javascript:NDev.SNS.Copy();"><span class="hide">URL복사</span></a></li>
							</ul>
						</div>
						<div class="btn_wrap">
							<div class="fl_c">
								<a href="/board" class="btn50 c1 slist" style="width: 240px;"
									tmp="contents/bod" mo="18">목록</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			
		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
	</body>
</html>