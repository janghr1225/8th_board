<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>게시글 수정</title>
</head>
<body>
	<div id="modify">
		<form action="/board/update" method="post">
			<div>
				<label for="boardNum">글번호</label>
				<input type="number" name="boardNum" readonly value="${boardVO.boardNum}"/>
			</div>	
			<div>
				<label for="userName">작성자</label>
				<input type="text" name="userName" value="${boardVO.userName}"/>
			</div>
			<div>
				<label for="title">제목</label>
				<input type="text" name="title" value="${boardVO.title}"/>
			</div>
			<div>
				<label for="content">내용</label>
				<textarea name="content">${boardVO.content}</textarea>
			</div>
			
			<button id="modifyBtn" value="update">수정하기</button>
		</form>
	</div>
	
	<script type="text/javascript">
		
		
		
	</script>
</body>
</html>