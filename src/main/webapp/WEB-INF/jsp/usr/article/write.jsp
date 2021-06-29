<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../part/head.jspf"%>

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
	
	var maxSizeMb = 50;
	var maxSize = maxSizeMb * 1024 * 1024 ;
	
	if (form.file__article__0__common__attachment__1.value) {
		if (form.file__article__0__common__attachment__1.files[0].size > maxSize) {
			alert(maxSizeMb + "MB 이하의 파일을 업로드 해주세요.");
			form.file__article__0__common__attachment__1.focus();
			
			return;
		}
	}
	
	if (form.file__article__0__common__attachment__2.value) {
		if (form.file__article__0__common__attachment__2.files[0].size > maxSize) {
			alert(maxSizeMb + "MB 이하의 파일을 업로드 해주세요.");
			form.file__article__0__common__attachment__2.focus();
			
			return;
		}
	}
	
	const startSubmitForm = function(data) {
		let genFileIdsStr = '';
		
		if (data && data.body && data.body.genFileIdsStr ){
			form.genFileIdsStr.value = data.body.genFileIdsStr;
		}
		
		form.file__article__0__common__attachment__1.value = '';
		form.file__article__0__common__attachment__2.value = '';
		
		form.submit();
	};
	
	const startUploadFiles = function(onSuccess){
		var needToUpload = form.file__article__0__common__attachment__1.value.length > 0;
		
		if (!needToUpload) {
			needToUpload = form.file__article__0__common__attachment__2.value.length > 0;
		}
		
		if (needToUpload == false){
			onSuccess();
			return;
		}
		
		var fileUploadFormData = new FormData(form);
		
		$.ajax({
			url: '/common/genFile/doUpload',
			data : fileUploadFormData,
			processData : false, // 파일 전송의 경우 이를 false로 만들어야 됨
			contentType: false, // multipart/form-data로 전송이 되게 false로 넣어준다
			dataType : "json", // 서버가 응답할대 보내줄 데이터의 타입
			type: 'POST',
			success : onSuccess
		});
	}
	
	ArticleWrite__submited = true;
	
	// 파일전송 -> 폼전송
	startUploadFiles(startSubmitForm);
}
</script>

<section>
	<div class="container mx-auto">
		<div class="font-bold text-lg mt-10">
			<span>글 작성</span>
		</div>
	
		<form onsubmit="ArticleWrite__checkAndSubmit(this); return false;" action="doWrite" method="POST" enctype="multipart/form-data">
			<input type="hidden" name="genFileIdsStr" value="" />
			<input type="hidden" name="boardId" value="${param.boardId}"/>
			<div class="mt-4 mb-4">
				<input type="text" name="title" class="w-full border-2 border-gray-600" placeholder="제목을 입력해주세요" autofocus="autofocus"/>
			</div>
			<div class="mb-2">
				<textarea name="body" class="w-full h-36 border-2 border-gray-600" placeholder="작성할 내용을 입력해주세요"></textarea>
			</div>
			
			
			<div class="mb-4 flex">
				<!-- file table / relTypeCode /relId / 카테고리 / 1번 -->
				<div class="font-bold w-36">썸네일 사진 첨부</div>
				<input type="file" name="file__article__0__common__attachment__1"/>
			</div>
			<div class="mb-4 flex">
				<div class="font-bold w-36">이력서 첨부</div>
				<input type="file" name="file__article__0__common__attachment__2"/>
			</div>
			
			<input type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" value="작성" />
			<input onclick="history.back();" type="button" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded" value="취소"/>
		</form>
	</div>
</section>

<%@ include file="../part/foot.jspf"%>