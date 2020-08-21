<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>글 목록</title>
</head>
<body>
<div>
	<form id="boardForm" name="boardForm" method="post">
		<h2>글 목록</h2>
		<table>
			<thead>
				<tr>
					<th>글번호</th>
					<th>제   목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="result" items="${list}" varStatus="status">
					<tr>
						<td><c:out value="${result.boardNo}"/></td>
						<td><a href="/board/boardDetail?boardNo=${result.boardNo}"><c:out value="${result.subject}"/></a></td>
						<td><c:out value="${result.writer}"/></td>
						<td><c:out value="${result.reg_datetime}"/></td>
					</tr>				
				</c:forEach>
			</tbody>
		</table>
		<div>
			<button type="button" onclick="location.href='/board/insertform'">글쓰기</button>
		</div>
	</form>
</div>
</body>
</html>