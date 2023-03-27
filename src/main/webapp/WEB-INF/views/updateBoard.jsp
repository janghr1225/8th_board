<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<form action="/board/update/{boardNum}" method="post">
		<input type="hidden" name="boardNum" value="${boardVO.boardNum}"/>
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
		
		<button type="submit">수정하기</button>
	</form>
</body>
</html>