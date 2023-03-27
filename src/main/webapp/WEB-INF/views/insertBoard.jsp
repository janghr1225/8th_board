<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록하기</title>
</head>
<body>
	
	<form action="/board/insert" method="post">
		
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
			<textarea type="text" name="content" value="${boardVO.content}"></textarea>
		</div>
		
		<button type="submit">등록</button>
	</form>
	
</body>
</html>