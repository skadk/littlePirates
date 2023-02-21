<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크리스트</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/checklist.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/checklist/checklist.js'/>"></script>

<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<!-- head end-->
</head>

<body>
	<div id="wrap">

		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />

		<div class="container">
			<div class="checklistHeader">📔 우 리 들 의 체 크 리 스 트</div>
			<div class="checklist_Section">
				<img class="menu_image"
					src="<c:url value='/images/checklistBingo2.png'/>">
				<div class="menu">

					<%-- 						체크리스트 빙고
						<div class="modal_wrap">
							<div class="modal_close">
								<a href="#" onclick="return false">닫기&#10062;</a>
							</div>
							모달 창 안 컨텐츠 박스 구현 iframe 사용
							<iframe src="/checkList/checkList_Clean" id="chat_iframe">구현할
								모달창 박스</iframe>
						</div>
						<div class="modalBtn">
							<img id="bannerImg"
						src="<c:url value='/images/checklistBingo1.png'/>">
						</div>
						<div class="black_bg"></div>
						체크리스트 빙고 끝 --%>

					<!-- 체크리스트 빙고 -->
					<div class="modal_wrap">
						<div class="modal_close">
							<a href="#" onclick="return false">닫기&#10062;</a>
						</div>
						<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>
						<iframe src="/checkList/checkList_Clean" id="chat_iframe">구현할
							모달창 박스</iframe>
					</div>
					<div class="modalBtn">
						<%
						String memId = (String) session.getAttribute("sid");
						if (memId == null) {
							// 로그인이 되어있지 않은 경우, 로그인 페이지로 이동하는 코드
							String returnUrl = request.getRequestURI();
						%>
						<a href="/member/login?returnUrl=<%=returnUrl%>"> <img
							id="bannerImg" src="<c:url value='/images/checklistBingo1.png'/>">
						</a>
						<%
						} else {
						%>
						<img id="bannerImg"
							src="<c:url value='/images/checklistBingo1.png'/>">
						<%
						}
						%>
					</div>
					<div class="black_bg"></div>
					<!-- 체크리스트 빙고 끝 -->

<%-- 					직접 만드는 체크리스트
					<div class="modal_wrap3">
						<div class="modal_close3">
							<a href="#" onclick="return false">닫기&#10062;</a>
						</div>
						모달 창 안 컨텐츠 박스 구현 iframe 사용
						<iframe src="/checkList/checkList_Manner" id="chat_iframe">구현할
							모달창 박스</iframe>
					</div>
					<div class="modalBtn3">
						<img id="bannerImg3"
							src="<c:url value='/images/piratesFlag.png'/>">
					</div>
					직접 만드는 체크리스트 끝 --%>
					
					<div class="modal_wrap3">
						<div class="modal_close3">
							<a href="#" onclick="return false">닫기&#10062;</a>
						</div>
						<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>
						<iframe src="/checkList/checkList_Manner" id="chat_iframe">구현할
							모달창 박스</iframe>
					</div>
					<div class="modalBtn3">
						<%
						memId = (String) session.getAttribute("sid");
						if (memId == null) {
							// 로그인이 되어있지 않은 경우, 로그인 페이지로 이동하는 코드
							String returnUrl = request.getRequestURI();
						%>
						<a href="/member/login?returnUrl=<%=returnUrl%>"> 
						<img id="bannerImg3" 
							src="<c:url value='/images/piratesFlag.png'/>">
						</a>
						<%
						} else {
						%>
						<img id="bannerImg3"
							src="<c:url value='/images/piratesFlag.png'/>">
						<%
						}
						%>
					</div>
					<div class="black_bg"></div>
					
					
<%-- 					체크리스트 달성률 보기
					<div class="modal_wrap2">
						<div class="modal_close2">
							<a href="#" onclick="return false">닫기&#10062;</a>
						</div>
						모달 창 안 컨텐츠 박스 구현 iframe 사용
						<iframe src="/checkList/checkList_Eat" id="chat_iframe3">구현할
							모달창 박스</iframe>
					</div>
					<div class="modalBtn2">
						<img id="bannerImg2" src="<c:url value='/images/star.png'/>">
					</div>
					체크리스트 달성률 보기 끝 --%>
					
					<div class="modal_wrap2">
						<div class="modal_close2">
							<a href="#" onclick="return false">닫기&#10062;</a>
						</div>
						<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>
						<iframe src="/checkList/checkList_Eat" id="chat_iframe">구현할
							모달창 박스</iframe>
					</div>
					<div class="modalBtn2">
						<%
						memId = (String) session.getAttribute("sid");
						if (memId == null) {
							// 로그인이 되어있지 않은 경우, 로그인 페이지로 이동하는 코드
							String returnUrl = request.getRequestURI();
						%>
						<a href="/member/login?returnUrl=<%=returnUrl%>"> 
						<img id="bannerImg2" 
							src="<c:url value='/images/star.png'/>">
						</a>
						<%
						} else {
						%>
						<img id="bannerImg2"
							src="<c:url value='/images/star.png'/>">
						<%
						}
						%>
					</div>
					<div class="black_bg"></div>
					
				</div>
				<div class="textBox"></div>
			</div>
		</div>

		<div class="popup" id="popupWrap">
			<div class="inner" id="popup_1">
				<div class="area">
					<!-- 					<div class="guideText">페이지 이용 안내 창</div> -->
					<h1 class="guideText">
						<span>페</span> <span>이</span> <span>지</span> <span>이</span> <span>용</span>
						<span>안</span> <span>내</span> <span>!</span>
					</h1>

					<div class="pageGuide" id="pageGuide1">
						<div class="pageNo" id="pageNo1">
							<img id="pageNoImg1" src="<c:url value='/images/No1.png'/>">
							<h1>통통 튀는 아이콘 클릭</h1>
						</div>
						<div class="pageGuideImgBox">
							<img id="pageGuideNoImg1"
								src="<c:url value='/images/Guide1.png'/>">
						</div>
					</div>
					<div class="pageGuide" id="pageGuide2">
						<div class="pageNo" id="pageNo2">
							<img id="pageNoImg2" src="<c:url value='/images/No2.png'/>">
							<h1>체크리스트 달성하기</h1>
						</div>
						<div class="pageGuideImgBox">
							<img id="pageGuideNoImg2"
								src="<c:url value='/images/Guide2.JPG'/>">
						</div>
					</div>
					<div class="pageGuide" id="pageGuide3">
						<div class="pageNo" id="pageNo3">
							<img id="pageNoImg3" src="<c:url value='/images/No3.png'/>">
							<h1>체크리스트 달성 현황 확인</h1>
						</div>
						<div class="pageGuideImgBox">
							<img id="pageGuideNoImg3"
								src="<c:url value='/images/Guide3.JPG'/>">
						</div>
					</div>
					<%-- <video width="900px" src="<c:url value='/video/Guide.mp4'/>" controls></video> --%>
				</div>
				<!-- 				<button class="guideBtn" id="guideBtn1" type="button" onClick="PopupNoDisplay_1()">
					하루동안 보지않기
				</button> -->
				<button class="guideBtn" id="guideBtn2" type="button"
					onClick="PopupHide();">닫기</button>
			</div>
			<div class="popupbg" style="background: gray;"></div>
		</div>


		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		<!-- bottom end-->

	</div>
</body>
</html>