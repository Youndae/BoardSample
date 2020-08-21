<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				
				form.action = "<c:url value='/updateform'/>";
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