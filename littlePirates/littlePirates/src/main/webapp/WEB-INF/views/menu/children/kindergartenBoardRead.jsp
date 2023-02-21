<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유치원 후기 보기</title>
<head>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/ChildrenBoardRead.css'/>">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />

</head>
<!--  삭제 확인 메시지 출력 -->
<script>
	function deleteCheck() {
		var answer = confirm("삭제하시겠습니까?");
		if (answer) {
			location.href = "/kindergartenBoard/deleteKBoard/${boa.kBrdNo}";
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
				<h3>유치원 게시판</h3>
			</div>
			<br>
			<table>
				<tr>
					<td width="50px">제목</td>
					<td width="400px" colspan="3">${boa.kBrdTitle }</td>
					<td />
				</tr>
				<tr>
					<td colspan="4"></td>
					<td>작성자 &nbsp; ${boa.memId }</td>
				</tr>
				<tr>
					<td>내용</td>
					<td height="300px" colspan="3">${boa.kBrdText }</td>
				</tr>
			</table>
			<br> <br> <br> <a
				href="<c:url value='/kindergartenBoard/kindergartenBoardUpdateForm/${boa.kBrdNo}'/>">
				<button class="btn">수정</button>

			</a> <a href="<c:url value='/kindergartenBoard'/>">
				<button class="btn">뒤로</button>
			</a>

			<button class="btn" value="삭제" onclick="javascript:deleteCheck();">삭제</button>

			<br> <br> <br> <br>
		</section>
		<!--  bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>