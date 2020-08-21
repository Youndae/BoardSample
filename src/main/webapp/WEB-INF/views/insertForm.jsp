<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>
</head>
<body>
<div>
	<form id="writeForm" name="writeForm" method="post">
		<div>
			<h2>글쓰기</h2>
			<div>
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" style="width: 500px" id="subject" name="subject"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea style="width: 500px" id="content" name="content" rows="10" cols="10"></textarea></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" style="width: 500px" id="writer" name="writer"></td>
					</tr>
				</table>
				<div>
					<a href='#' onClick='insertBoard()'>글 등록 </a>
					<a href='#' onClick='cancel()'>글 목록</a>
				</div>
			</div>
		</div>
	</form>
	<script>
	function insertBoard(){
		var form = document.getElementById("writeForm");
		
		form.action = "<c:url value='/insertBoard'/>";
		form.submit();
	}
	
	function cancel(){
		var form = document.getElementById("writeForm");
		
		form.action = "<c:url value='/boardList'/>";
		form.submit();
	}
	
	</script>
</div>
</body>
</html>