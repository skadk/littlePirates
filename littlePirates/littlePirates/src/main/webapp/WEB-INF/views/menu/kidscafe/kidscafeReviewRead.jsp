<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>키즈카페 후기 보기</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/kcReviewR.css'/>">
		<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
</head>
		<!--  삭제 확인 메시지 출력 -->
		<script>
			function deleteCheck() {
				var answer = confirm("삭제하시겠습니까?");
				if (answer) {
					location.href = "/kidscafeReview/delete/${kcr.kcrNo}";
				}
			}
		</script>
<body>

	<div id="wrap">
		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
		<section>
			<div class="BoardRead">
				<h2>키즈카페 게시판</h2>
			</div><br>
			
			<table>
				<tr>
					<td width="50px">제목</td>
					<td width="400px" colspan="3">${kcr.kcrTitle }</td>
					<td />
				</tr>
				<tr>
					<td colspan="4"></td>
					<td>작성자 &nbsp; ${kcr.memId }</td>
				</tr>
				<tr>
					<td>내용</td>
					<td height="300px" colspan="3">${kcr.kcrText }</td>
					<td />
				</tr>
			</table><br><br><br>
			
				<a href="<c:url value='/kidscafeReview/kidscafeReviewUpdateForm/${kcr.kcrNo}'/>">
					<button class="btn">수정</button>
				</a> 
				
				<a href="<c:url value='/kidscafeReview'/>">
					<button class="btn">뒤로</button>
				</a>

				<button class="btn" value="삭제" onclick="javascript:deleteCheck();">삭제</button>
				
				<br><br><br><br>
			
		</section>
		<!--  bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>