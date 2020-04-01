<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="/WEB-INF/views/layouts/header.jsp"%>

<br>

<body>

<div class="container" style="min-height:600px;">
	<a>토론 바로가기</a><br>
		<a href="/board/list?stboardname_no=${stboard.stboardname_no }&curPage=1">게시판 바로가기</a>

</div>

</body>

<%@ include file="/WEB-INF/views/layouts/footer.jsp"%>