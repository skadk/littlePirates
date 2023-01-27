<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시물</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
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
					<h3 class="tit">자유게시판</h3>
					<div class="location">
						<span class="depth">홈</span> <span class="depth">커뮤니티</span><strong
							class="this">자유게시판</strong>
					</div>
				</div>
				<div class="viewbody">
					<div class="hgroup">
						<div class="tit">테스트1</div>
						<div class="util">
							<div class="name">hong</div>
							<div class="date">2023.01.25</div>
							<div class="hit">조회수 : 0</div>
						</div>
					</div>

					<div class="content">
						<!-- 내용 -->
						<div class="editor ck-content">
							<p>안녕하세요.</p>
							<p>테스트입니다.</p>
							
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
										<span class="ico">추천</span><span class="val" id="rdnCnt">0</span>
									</button>
									<!-- 활성화 addClass : on -->
								<button type="button" class="report reportBtn " data-seq="188677">
										<span class="ico">신고</span><span class="val" id="repCnt">0</span>
									</button>
									<!-- 활성화 addClass : on -->
								</div>
							
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