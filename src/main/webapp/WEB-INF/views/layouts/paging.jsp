<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.page-item.active .page-link {
	background-color:#585858;
	border-color:grey
}

.page-link {
	color:grey;
}
</style>

<div>
	<ul class="pagination" >
	
	<!-- 처음으로 가기 -->
	<c:if test="${paging.curPage ne 1 }">
		<li class="page-item"><a class="page-link" href="${url }?curPage=${paging.startPage }&stboardname_no=${stboard.stboardname_no}">&laquo;</a></li>
	</c:if>
	
	<!-- 이전 페이징 리스트로 가기 -->
	<c:if test="${paging.startPage gt paging.pageCount }">
		<li class="page-item"><a class="page-link" href="${url }?curPage=${paging.startPage - paging.pageCount }&stboardname_no=${stboard.stboardname_no}">&laquo;</a></li>
	</c:if>
	
	<!-- 이전 페이지로 가기 -->
	<c:if test="${paging.curPage ne 1 }">
		<li class="page-item"><a class="page-link" href="${url }?curPage=${paging.curPage - 1 }&stboardname_no=${stboard.stboardname_no}">&lt;</a></li>
	</c:if>
	
	
	
	<!-- 페이징 리스트 -->
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
		<c:choose>
			<c:when test="${paging.curPage eq i }">
				<li class="active page-item"><a class="page-link" href="${url }?curPage=${i }&stboardname_no=${stboard.stboardname_no}">${i }</a>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="${url }?curPage=${i }&stboardname_no=${stboard.stboardname_no}">${i }</a>
			</c:otherwise>
		</c:choose>	
	</c:forEach>
	
	<!-- 다음 페이지로 가기 -->
	<c:if test="${paging.curPage ne paging.totalPage }">
		<li class="page-item"><a class="page-link" href="${url }?curPage=${paging.curPage + 1 }&stboardname_no=${stboard.stboardname_no}">&gt;</a></li>
	</c:if>
	
	<!-- 다음 페이징 리스트로 가기 -->
	<c:if test="${paging.endPage gt paging.totalCount }">
		<li class="page-item"><a class="page-link" href="${url }?curPage=${paging.startPage + paging.pageCount }$stboardname_no=${stboard.stboardname_no}">&laquo;</a></li>
	</c:if>
	<c:if test="${paging.endPage eq paging.totalCount }">
		<li class="disabled page-item" ><a class="page-link">&laquo;</a></li>
	</c:if>
	
	<!-- 끝 페이지로 가기 -->
	<c:if test="${paging.curPage ne paging.totalPage }">
		<li class="page-item"><a class="page-link" href="${url }?curPage=${paging.totalPage }&stboardname_no=${stboard.stboardname_no}">&raquo;</a></li>
	</c:if>
	</ul>
</div>