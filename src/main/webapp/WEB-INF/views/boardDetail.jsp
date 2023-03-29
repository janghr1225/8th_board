<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
</head>
<body>
	<table>
		<colgroup>
			<col width="200px" />
			<col />
		</colgroup>
		<tbody>
			<tr>
				<th>No. </th>
				<td><input type="text" name="boardNum" readonly value="${boardVO.boardNum}"/></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="userName" readonly value="${boardVO.userName}"/></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" readonly value="${boardVO.title}"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" readonly>${boardVO.content}</textarea></td>
			</tr>
		</tbody>
	</table>
	
	<button onclick="location.href='/board/update/${boardVO.boardNum}'">수정하기</button>

	<script type="text/javascript">
	 	
		
	</script>
</body>



</html>