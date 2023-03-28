<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>게시글 등록하기</title>
</head>
<body>
	
	<form id="insert" name="insert" action="/board/insert" method="post">
		
		<div>
			<label for="userName">작성자</label>
			<input type="text" name="userName"/>
		</div>
		<div>
			<label for="title">제목</label>
			<input type="text" name="title"/>
		</div>
		
		<div>
			<label for="content">내용</label>
			<textarea name="content"></textarea>
		</div>
		
	</form>
	
	<button id="send">등록</button>
	<!-- 동기 처리 비동기처리 => submit을 눌렀을 떄 onclick 함수 실행이 먼저냐 아니면 submit이 먼저냐, 그 실행이 항상 보장 되는지 -->
	
	<script>
		function register() {
			window.opener.rendering();
		}
		
		document.getElementById("send").addEventListener("click", function() {
			const formData = {
					userName : $("input[name=userName]").val(),
					content : $("textarea[name=content]").val(),
					title : $("input[name=title]").val()
			}
			$.ajax({		/* 비동기처리 */
				type : 'post',
				url : '/board/insert',
				data : JSON.stringify(formData),
				contentType: "application/json; charset=utf-8;",
				success : function() {
					console.log("success")
					window.opener.rendering();
					window.close();
				},
				error : function(xhr, status, error) {
					console.log("error");					
				}
			});
		})
	</script>
</body>
</html>