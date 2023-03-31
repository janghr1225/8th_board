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
			<input type="text" name="q" placeholder="검색어를 입력하세요" value=""/>
			<input type="button" onclick="searchList()" value="검색"/>
		</form>
		
		<button type="button" id="deleteBoardId" name="deletBoard" class="delMulti" onclick="delMulti()">선택삭제</button>
		<button onclick="openPop('/board/insertPopup')" name = "boardBtn">게시글 등록하기</button>
		
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
						<td><input type="checkbox" name="oneCheck" id="${n.boardNum}" class="check" ></td>
						<td>${board.size() - status.count + 1}</td>
						<td><a onclick="openPop('/board/list/${n.boardNum}')">${n.title}</a></td>
						<td>${n.userName}</td>
						<td>${n.creDate}</td>
						<td><a href="/board/delete/${n.boardNum}">삭제</a></td>	<!-- to-do : button으로 바꾸기 -->
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script type="text/javascript">
	
	 	function openPop(openURL) {			
	 		var pop = window.open(openURL,'등록하기','width=600,height=600,left=10,top=10');		
		}
	 	
	 	//렌더링 함수
	 	function rendering() {
	 		$('#board').load(location.href + '#board');
	 	}
	 	
	 	//checkbox 전체선택
  		$("#allCheckId").click(function(){
 			if($("#allCheckId").is(":checked")){
 				$("input[name=oneCheck]").prop("checked", true);
 			}else{
 				$("input[name=oneCheck]").prop("checked", false);
 			}
 		});
	 	//checkbox 전체선택 해제
	 	$("#oneCheckId").click(function(){
	 		var total = $("input[name=oneCheck]").length;
			var checked = $("input[name=oneCheck]:checked").length;

			if(total != checked) $("#allCheckId").prop("checked", false);
			else $("#allCheckId").prop("checked", true); 
 		}); 

	 	//체크박스 선택 삭제 delMulti()
 	 	function delMulti(){
	 		
	 		var url = "/board/delete";
	 		var valueArr = new Array();
	 		var list = $("input[name='oneCheck']");
	 		
	 		for(var i = 0; i < list.length; i++){
	 			if(list[i].checked){
	 				valueArr.push(list[i].id);
	 			}
	 		}
	 		
	 		const listData = {
	 			boardNum : valueArr
	 		}
	 		
	 		console.log(listData);
	 		
	 		if(valueArr.length == 0){
	 			alert("삭제할 글을 선택하세요.");
	 		}else{
	 			var chk = confirm("정말 삭제하시겠습니까?");	//확인 or 취소
	 			$.ajax({
	 				url : url,
	 				type : 'post',
	 				data : listData,
	 				success : function(jdata){
	 					if(jdata = 1){
	 						alert("삭제되었습니다.");
	 						location.replace("/board/list");
	 					}else{
	 						alert("삭제에 실패하였습니다.");
	 					}
	 				}
	 			});
	 		}
	 	}//end delMulti() 
 	 	
	 	//게시글 검색 searchList()
	 	function searchList(){
	 		$.ajax({
	 			type:"GET",
	 			
	 		})
	 	}//end searchList()
	 	 
	 	
	 	
	</script>
</body>


</html>