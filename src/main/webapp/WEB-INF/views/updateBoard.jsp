<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
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
		
		<button type="submit" value="update">수정하기</button>
	</form>
</body>
</html>