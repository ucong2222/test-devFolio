<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sbs.devFolio.util.Util" %>

<%@ include file="../part/head.jspf"%>

<script>
ArticleModifysubmited = false;
function ArticleModifycheckAndSubmit(form){
	if ( ArticleModifysubmited ) {
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
	
	ArticleModifysubmited = true;
	
	// 파일전송 -> 폼전송
	startUploadFiles(startSubmitForm);
	
	
}
</script>

<section>
	<div class="container mx-auto">
		<div class="font-bold text-lg mt-10">
			<span>글 수정</span>
		</div>
	
		<form onsubmit="ArticleModifycheckAndSubmit(this); return false;" action="doModify" method="POST">
			<div class="mt-4 mb-4">
				<input type="hidden" name="genFileIdsStr" value="" />
				<input type="hidden" name="id" value="${article.id}" />
				<input type="text" name="title" class="w-full border-2 border-gray-600" value="${article.title}"/>
			</div>
			
			<div>
				<div class="font-bold">썸네일 사진</div>
				<c:set var="fileNo1" value="${String.valueOf(1)}" />
				<c:set var="file" value="${article.extra.file__common__attachment[fileNo1] }" />
				<c:if test="${file != null && file.fileExtTypeCode == 'img'}">
					<div>
						<a href="${file.forPrintUrl}" target="_blank" class="text-blue-500 hover:underline">${file.fileName}</a> ( ${Util.numberFormat(file.fileSize)} Byte )
						<a href="${file.forPrintUrl}" target="_blank" title="자세히 보기">
                        	<img class="max-w-sm" src="${file.forPrintUrl}">
                        </a>
					</div>
					<div class="mt-2 mb-2">
						<span class="font-bold">썸네일 수정</span>
						<input type="file" name="file__article__0__common__attachment__1" />
					</div>
				</c:if>
				
				<c:set var="fileNo2" value="${String.valueOf(2)}" />
				<c:set var="file" value="${article.extra.file__common__attachment[fileNo2] }" />
				<c:if test="${file != null && file.fileExtTypeCode == 'img'}">
					<div class="font-bold">이력서</div>
					<div>
						<a href="${file.forPrintUrl}" target="_blank" class="text-blue-500 hover:underline">${file.fileName}</a> ( ${Util.numberFormat(file.fileSize)} Byte )
						<a class="block" href="${file.forPrintUrl}" target="_blank" title="자세히 보기">
                        	<img class="max-w-sm" src="${file.forPrintUrl}">
                        </a>
					</div>
					<div class="mt-2">
						<span class="font-bold">이력서 수정</span>
						<input type="file" name="file__article__0__common__attachment__2" />
					</div>
				</c:if>
				<c:if test="${file == null}">
					<span class="font-bold">이력서 추가</span>
					<input type="file" name="file__article__0__common__attachment__2" />
				</c:if>
				
				
			</div>
			
			
			
			<div class="mb-2 mt-2">
				<textarea name="body" class="w-full h-36 border-2 border-gray-600">${article.body}</textarea>
			</div>
			<input type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" value="수정" />
			<input onclick="history.back();" type="button" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded" value="취소"/>
		</form>
	</div>
</section>

<%@ include file="../part/foot.jspf"%>