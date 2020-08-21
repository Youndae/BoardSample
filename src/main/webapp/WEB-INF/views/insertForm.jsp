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
						<td><textarea style="width: 500px" id="content" name="content" rows="10" cols="10"></textarea></td>
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