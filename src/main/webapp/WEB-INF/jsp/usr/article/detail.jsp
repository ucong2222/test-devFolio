<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../part/head.jspf"%>

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
			</div>
		</div>
	</div>
</section>

<%@ include file="../part/foot.jspf"%>
