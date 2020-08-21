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
<title>${detail.subject}</title>
</head>
<body>
	<div>
		<form id="viewForm" name="viewForm" method="post">
			<div>
				<h2>글쓰기</h2>
				<div>
					<table>
						<tr>
							<th>제목</th>
							<td><input type="text" style="width: 500px" id="subject" name="subject" value="${detail.subject}" readonly></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea style="width: 500px" rows="10" cols="10" id="content" name="content" readonly><c:out value="${detail.content}" /></textarea></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input type="text" style="width: 500px" id="writer" name="writer" value="${detail.writer}" readonly></td>
						</tr>
					</table>
					<div>
						<a href='#' onClick='update()'>수정</a>
						<a href='#' onClick='cancel()'>목록</a>
						<a href='#' onClick='reply()'>답변</a>
					</div>
				</div>
			</div>
			<input type="hidden" id="boardNo" name="boardNo" value="${detail.boardNo}">
		</form>
		<script>
			function update(){
				
				var form = document.getElementById("viewForm");
				
				form.action = "<c:url value='/updateboard'/>";
				form.submit();
			}
			
			function cancel(){
				var form  = document.getElementById("viewForm");
				
				form.action = "<c:url value='/boardList'/>";
				form.submit();
			}
			
			function reply(){
				var form = document.getElementById("viewForm");
				
				form.action = "<c:url value='/replyForm'/>";
				form.submit();
			}
		</script>
	</div>
</body>
</html>