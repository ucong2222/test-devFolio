<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../part/head.jspf"%>

<script>

// 좋아요 기능 구현
function doLike(relTypeCode, relId){
	if (${loginedMemberId}==0){
		alert('로그인 이후 이용해주세요.');
		return;
	}
	
	$.get('../like/doLike',
			{
			relTypeCode,
			relId
			},
			function(data){
				alert(data.msg);
				
				if (data.body.relTypeCode == 'article'){
					$('.likePoint').text(data.body.likePoint);
				}
			},
			'json',
		);
}

</script>

<section>
	<div class="container mx-auto">
		<div class="font-bold text-lg mt-10">
			<span>글상세</span>
		</div>
		<div class="mt-4 mb-4">
			<div>
				<span>번호 : ${article.id}</span>
				<span>작성날짜 : ${article.regDate}</span>
				<span>수정날짜 : ${article.updateDate}</span>
				<span>게시판이름 : ${article.extra__boardName}</span>
				<span>작성자번호 : ${article.memberId}</span>
				<span>작성자 : ${article.extra__writer}</span>
				<span>제목 : ${article.title}</span>
				<span>내용 : ${article.body}</span>
				<span>조회수 : ${article.hitCount}</span>
				
				<div> 추천 </div>
				<div> <a onclick="doLike('article',${article.id});" class="cursor-pointer"><i class="far fa-heart"></i></a> <span class="likePoint">${article.extra__likePoint}</span></div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../part/foot.jspf"%>
