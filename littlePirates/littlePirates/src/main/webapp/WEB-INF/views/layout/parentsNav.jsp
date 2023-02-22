<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<nav id="parentsNav">
				<div id="parentsMainBox">
					<a href="<c:url value='/board'/>" class="parentsMainMenu line1" id="parentsMainMenu1">비밀 기지</a>
					<a href="<c:url value='/paintDiary'/>" class="parentsMainMenu line1" id="parentsMainMenu2">항해 일지</a>
					<a href="<c:url value='/checklist'/>" class="parentsMainMenu line1" id="parentsMainMenu3">오늘의 빙고</a>
					<a href="<c:url value='/children'/>" class="parentsMainMenu line2" id="parentsMainMenu4">교육 시설<p>알아보기</p></a>
					<a href="<c:url value='/kidscafe_map'/>" class="parentsMainMenu line2" id="parentsMainMenu5">키즈 카페<p>탐방</p></a>
				</div>
			</nav>
