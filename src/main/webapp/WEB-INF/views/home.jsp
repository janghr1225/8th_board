<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List jsp</title>
</head>
<body>
	
	
	<form action="/board/search" method="get">
		<select name="f">
			<option value="title">제목</option>
			<option value="userName">작성자</option>
		</select>
		<input type="text" name="q" placeholder="검색어를 입력하세요" value="">
		<input type="submit" value="검색"/>
	</form>
	
	<!-- <button type="button">선택삭제</button> -->
	
	<table border="1">
		<thead>
			<tr>
				<th><input type="checkbox" class="allCheck"></th>
				<th> No </th>
				<th> 제목 </th>
				<th> 작성자 </th>
				<th> 작성일시 </th>
				<th> 삭제 </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="n" items="${board}" varStatus="status">
				<tr>
					<td><input type="checkbox" class="check"></td>
					<td>${status.count}</td>
					<td><a href="/board/list/${n.boardNum}">${n.title}</a></td>
					<td>${n.userName}</td>
					<td>${n.creDate}</td>
					<td><a href="/board/delete/${n.boardNum}">삭제</a></td>
					<!-- <td><button type="button" id="deleteBoard" onclick="delBoard()">삭제</button></td> -->
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<button onclick="openPop()" name = "boardBtn">게시글 등록하기</button>

	<script type="text/javascript">
	
	 	function openPop() {
			var pop = window.open('/board/insertPopup','등록하기','width=600,height=600,left=10,top=10');
		} 
	 	 	
	</script>
</body>


</html>