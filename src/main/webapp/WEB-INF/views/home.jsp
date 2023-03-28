<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Board List</title>
</head>
<body>
	
	<div id="board">
		<form action="/board/search" method="get">
			<select name="f">
				<option value="title">제목</option>
				<option value="userName">작성자</option>
			</select>
			<input type="text" name="q" placeholder="검색어를 입력하세요" value="">
			<input type="submit" value="검색"/>
		</form>
		
		<button type="button" id="deleteBoardId" name="deletBoard" class="delMulti">선택삭제</button>
		<button onclick="openPop()" name = "boardBtn">게시글 등록하기</button>
		
		<table border="1">
			<thead>
				<tr>
					<th><input type="checkbox" name="allCheck" id="allCheckId" class="check"></th>
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
						<td><input type="checkbox" name="oneCheck" id="oneCheckId" class="check" ></td>
						<td>${board.size() - status.count + 1}</td>
						<td><a href="/board/list/${n.boardNum}">${n.title}</a></td>
						<td>${n.userName}</td>
						<td>${n.creDate}</td>
						<td><a href="/board/delete/${n.boardNum}">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script type="text/javascript">
	
	 	function openPop() {
			var pop = window.open('/board/insertPopup','등록하기','width=600,height=600,left=10,top=10');
		}
	 	
	 	//렌더링 함수
	 	function rendering() {
	 		$('#board').load(location.href + '#board');
	 	}
	 	
	 	//checkbox전체선택
 		$("#allCheckId").click(function(){
 			if($("#allCheckId").is(":checked")){
 				$("input[name=oneCheck]").prop("checked", true);
 			}else{
 				$("input[name=oneCheck]").prop("checked", false);
 			}
 		});
	 	//checkbox전체선택 해제
	 	$("#oneCheckId").click(function(){
	 		var total = $("input[name=oneCheck]").length;
			var checked = $("input[name=oneCheck]:checked").length;

			if(total != checked) $("#allCheckId").prop("checked", false);
			else $("#allCheckId").prop("checked", true); 
 		});
	 	 	
	</script>
</body>


</html>