<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눔장터 게시물</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/button.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/fleaMarket.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board/board.css'/>">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script>
	$(document).ready(function() {

		var memId = $('#memId').val(); // 글 작성자
		var sid = $('#sid').val(); //로그인한 회원
		if (memId != sid) { // 작성자가 현재 로그인 한 회원이 아니라면
			//alert("작성자만 수정 가능합니다");
			//return false;
			$('#updateBtn').css('visibility', 'hidden');
		}

	});
</script>
<script>
	$(document).ready(function() {

		var memId = $('#memId').val(); // 글 작성자
		var sid = $('#sid').val(); //로그인한 회원
		if (memId != sid) { // 작성자가 현재 로그인 한 회원이 아니라면
			//alert("작성자만 수정 가능합니다");
			//return false;
			$('#deleteBtn').css('visibility', 'hidden');
		}
	});
</script>

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
				<div class="conwrap">
					<div class="h3group">
						<h3 class="tit">나눔장터 게시판</h3>
						<div class="location">
							<span class="depth">홈</span> <span class="depth">커뮤니티</span><strong
								class="this">나눔장터 게시판</strong>
						</div>
					</div>
					<input type="hidden" id="memId" value="${frd.memId}">
					<!-- 작성자 -->
					<input type="hidden" id="sid" value="${sid}">
					<!-- 로그인한회원 -->
					<div class="viewbody">
						<div class="hgroup">
							<div class="tit">${frd.flTitle}</div>
							<div class="util">
								<div class="name">${frd.memId}</div>
								<div class="date">
									<fmt:formatDate value="${frd.flDate}" pattern="yyyy-MM-dd" />
								</div>
								<div class="hit">조회수 : ${frd.flViewCount}</div>
							</div>
						</div>

						<div id="mainTwoBox">
							<div id="fleaMarketTextImgBox">
								<img  src="<c:url value='/image/${frd.flImageName}' />" width="350" height="350">
							</div>

							<div id="fleaMarketTextTableBox">
								<table borden="1" width="340px" height="402px">
									<tr align= "left">
										<td width="200px" height="30px">상품 이름 : ${frd.flName}</td>
									</tr>
									<tr align= "left">
										<td width="200px" height="30px">${frd.flCategory}</td>
									</tr>
									<tr align= "left">
										<td width="200px" height="30px">가격 : ${frd.flPrice}</td>
									</tr>
									<tr align= "left">
										<td colspan='2'>${frd.flText}</td>
									</tr>
								</table>

							</div>
						</div>
						<!-- 파일첨부 -->

						<div class="bottom">
							<div class="utils">
								<div class="function">
									<button type="button" class="scrap actionBtn ">
										<span class="ico">추천</span><span class="val" id="scrapCnt">0</span>
									</button>
									<!-- 활성화 addClass : on -->
									<button type="button" class="recom actionBtn ">
										<span class="ico">찜하기</span><span class="val" id="rdnCnt">0</span>
									</button>
									<button id="updateBtn" class="write"  width = "240">
										<a href="<c:url value='/fleaMarket/fleaMarketUpdateForm/${frd.flNo}' />"> 수정</a>
									</button>
									<button id="deleteBtn" class="write" width = "240">
										<a href="javascript:deleteCheck()"> 삭제</a>
									</button>
									
									<br>
									<!--  삭제 확인 메시지 출력 -->
									<script>
										function deleteCheck() {
											var answer = confirm("삭제하시겠습니까?");
											if (answer) {
												location.href = "/fleaMarket/deletefleaMarket/${frd.flNo}";
											}
										}
									</script>

								</div>

							</div>
							<div class="btn_wrap">
								<div class="fl_c">
									<a href="/fleaMarket" class="btn50 c1 slist"
										style="width: 240px;" tmp="contents/bod" mo="18">목록</a>
								</div>
							</div>
						</div>
						<div class="conwrap">
							<div class="h4group">
								<h4 class="tit">한줄 의견을 나눠 보세요</h4>
								<p class="length">
									총 <span class="val" id="totalCount">0개</span> 의견이 있습니다.
								</p>
							</div>

							<div class="cmt_write_wrap">
								<div class="cmt_write_inner">
									<form name="cmtForm" id="cmtForm" method="post" data-reply="N"
										action="<c:url value='/fleaMarket/fleaMarketComment'/>">
										<input type="hidden" name= "flNo" id="flNo" value="${frd.flNo}">
										<input type="hidden" name= "memId" id="memId" value="${frd.memId}">
										<textarea name="flcText" class="cmt_contents"
											placeholder="댓글을 입력해 주세요. 500자 이내로 작성 가능합니다." maxlength="500">
										</textarea>
										<input type="submit" class="submit" value="등록">
									</form>
								</div>
							</div>
							<!-- <div id="cmt_range_wrap" class="cmt_range_wrap">
								<a class="btnSort">추천순</a> <a class="btnSort oon">작성일순</a>
							</div> -->
							<c:forEach var="flc" items="${flcList }">
							<div id="cmt_list_wrap" class="cmt_list_wrap">
								<div class="cmt_sect">
									<div class="circle c1">
										<div class="cell">${flc.memId}</div>
									</div>
									<div class="cmt_area">
										<div class="cmt_util">
											<div class="utils">
												<div class="writer">${flc.memId}</div>
												
												<div class="date"><fmt:formatDate value="${flc.flcDate}"
														pattern="yyyy-MM-dd" />
												</div>
											</div>
										</div>
										<div class="cmt_text">
											<p class="txt">${flc.flcText}</p>
										</div>
									</div>
								</div>
							</div> <!-- 댓글  박스 -->
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
	</div>
</body>
</html>