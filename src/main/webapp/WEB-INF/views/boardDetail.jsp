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
			<col width="250px" />
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
				<td><input type="text" name="content" readonly value="${boardVO.content}"/></td>
			</tr>
		</tbody>
	</table>
	
	<button onclick="openPop()">수정</button>

	<script type="text/javascript">
	/* 
		let num =  */
		
		let windowOpen = '/board/update/'+ ${boardVO.boardNum};
	 	function openPop() {
			var pop = window.open(windowOpen,'수정하기','width=600,height=600,left=10,top=10');
		} 
	
	</script>
</body>



</html>