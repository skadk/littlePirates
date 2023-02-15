<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<nav id="parentsNav">
				<div id="parentsMainBox">
					<a href="<c:url value='/board'/>" class="parentsMainMenu" id="parentsMainMenu1">비밀 기지</a>
					<a href="<c:url value='/'/>" class="parentsMainMenu" id="parentsMainMenu2">항해 일지</a>
					<a href="<c:url value='/checklist'/>" class="parentsMainMenu" id="parentsMainMenu3">오늘의 빙고</a>
					<a href="<c:url value='/children'/>" class="parentsMainMenu" id="parentsMainMenu4">어린이집/ 유치원</a>
					<a href="<c:url value='/kidscafe_map'/>" class="parentsMainMenu" id="parentsMainMenu5">키즈 카페 어때?</a>
				</div>
			</nav>
