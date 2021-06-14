<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.3/tailwind.min.css" />
</head>

<script>
ArticleWrite__submited = false;
function ArticleWrite__checkAndSubmit(form){
	if ( ArticleWrite__submited ) {
		alert('처리중입니다.');
		return;
	}
	
	form.title.value = form.title.value.trim();
	
	if ( form.title.value.length == 0 ) {
		alert('제목을 입력해주세요.');
		form.title.focus();
		
		return false;
	}
	
	if ( form.body.value.length == 0 ) {
		alert('내용을 입력해주세요.');
		form.body.focus();
		
		return false;
	} 
	
	form.submit();
	ArticleWrite__submited = true;
	
}
</script>

<body>
	<div class="container mx-auto">
		<div class="font-bold text-lg mt-10">
			<span>글 작성</span>
		</div>
	
		<form onsubmit="ArticleWrite__checkAndSubmit(this); return false;" action="doWrite" method="POST">
			<input type="hidden" name="boardId" value="${param.boardId}"/>
			<div class="mt-4 mb-4">
				<input type="text" name="title" class="w-full border-2 border-gray-600" placeholder="제목을 입력해주세요" autofocus="autofocus"/>
			</div>
			<div class="mb-2">
				<textarea name="body" class="w-full h-36 border-2 border-gray-600" placeholder="작성할 내용을 입력해주세요"></textarea>
			</div>
			<input type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" value="작성" />
			<input onclick="history.back();" type="button" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded" value="취소"/>
		</form>
	</div>
</body>
</html>