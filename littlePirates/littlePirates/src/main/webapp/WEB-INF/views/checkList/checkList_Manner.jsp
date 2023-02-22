<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 만드는 체크리스트</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/checklist_Manner.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/checklist/checklist_Manner.js'/>"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">
</head>
<body>

	<div class="container2">
		<div class="mannerHeader2">
			내가 만드는 체크리스트
			<!-- 		<div class="createChecklist2">체크리스트 랜덤 재 생성</div> -->
		</div>
		<div class="checklist_Section2">

			<div class="mannerList2">
				<div class="slideBtn">
					<div id="prevBtn">
						<img id="prevBtnImg" src="<c:url value='/images/prevBtn.png'/>">
					</div>
					<div id="nextBtn">
						<img id="nextBtnImg" src="<c:url value='/images/nextBtn.png'/>">
					</div>
				</div>
				<c:forEach var="vo" items="${voList}" end="0">
					<h1 class="Date">${vo.pgNo}</h1>
				</c:forEach>
				<div class="selfChecklistContent">
						<div class="selfChecklistHeader"></div>
					<div class="listBox">
						<div class="listBoxHeader">
							<span id="spanTag1">리스트 목록</span> <span id="spanTag2">확인</span> <span
								id="spanTag3">달성날</span>
						</div>
						<!-- 다섯칸의 리스트 목록 -->
						<div class="list">
							<div>
								<img id="listIcon" src="<c:url value='/images/pirates1.png'/>">
							</div>
							<c:forEach var="vo" items="${voList}" end="0">
								<div class="listText">
									<span id="sclNo1" onclick="editChecklist(this)">${vo.sclNo1}</span>
									<input type="text" id="sclNo1Input" value="${vo.sclNo1}"
										style="display: none;" onblur="saveChecklist(this)" />
								</div>
								<div class="dateComplete">
									<span id="sclNo1_Checked" onclick="editChecklist(this)">${vo.sclNo1_Checked}</span>
									<input type="text" id="sclNo1_CheckedInput"
										value="${vo.sclNo1_Checked}" style="display: none;"
										onblur="saveChecklist(this)" />
								</div>
							</c:forEach>
							<input type="checkbox" class="listCheckBox">
						</div>
						<div class="list">
							<div>
								<img id="listIcon" src="<c:url value='/images/pirates2.png'/>">
							</div>
							<c:forEach var="vo" items="${voList}" end="0">
								<div class="listText">${vo.sclNo2}</div>
								<div class="dateComplete">${vo.sclNo2_Checked}</div>
							</c:forEach>
							<input type="checkbox" class="listCheckBox">
						</div>
						<div class="list">
							<div>
								<img id="listIcon" src="<c:url value='/images/pirates3.png'/>">
							</div>
							<c:forEach var="vo" items="${voList}" end="0">
								<div class="listText">${vo.sclNo3}</div>
								<div class="dateComplete">${vo.sclNo3_Checked}</div>
							</c:forEach>
							<input type="checkbox" class="listCheckBox">
						</div>
						<div class="list">
							<div>
								<img id="listIcon" src="<c:url value='/images/pirates4.png'/>">
							</div>
							<c:forEach var="vo" items="${voList}" end="0">
								<div class="listText">${vo.sclNo4}</div>
								<div class="dateComplete">${vo.sclNo4_Checked}</div>
							</c:forEach>
							<input type="checkbox" class="listCheckBox">
						</div>
						<div class="list">
							<div>
								<img id="listIcon" src="<c:url value='/images/pirates5.png'/>">
							</div>
							<c:forEach var="vo" items="${voList}" end="0">
								<div class="listText">${vo.sclNo5}</div>
								<div class="dateComplete">${vo.sclNo5_Checked}</div>
							</c:forEach>
							<input type="checkbox" class="listCheckBox">
						</div>
					</div>

					<div class="photoBox">
						<c:forEach var="vo" items="${voList}" end="0">
							<div class="photolistName">${vo.scl_photoName }</div>
							<div class="photoDate">${vo.sclDate}</div>
							<div class="fileUpload">
								<form method="post" enctype="multipart/form-data"
									id="fileUploadForm" class="fileUploadForm"
									action="<c:url value='/allFileUpload'/>">
									<div class="button">
										<label for="chooseFile"> 👉 파일 업로드 👈 </label>
									</div>
									<input type="file" id="chooseFile" name="chooseFile"
										accept="image/*" onchange="loadFile(this)"> <input
										type="submit" value="저장" class="submitBtn">
								</form>
							</div>
							<div class="photoContent">
								<img id="photoContent${i}"
									src="<c:url value='/upload/${vo.scl_photoPath}.jpg'/>">
							</div>
							<div class="photoContentText">${vo.scl_Text}</div>
						</c:forEach>
					</div>
				</div>
				<div class="listMenu">
					<ul>
						<li onclick="completeChecklist()">완료</li>
						<li onclick="addChecklist()">추가</li>
						<li onclick="updateChecklist()">수정</li>
						<li onclick="deleteChecklist()">삭제</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
