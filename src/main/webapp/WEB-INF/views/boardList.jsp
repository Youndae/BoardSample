<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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