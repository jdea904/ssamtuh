<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/layouts/header.jsp"%>

<body>
<div style="padding-top:90px;padding-bottom:90px">
	<div class="col" style="text-align: center;">
		<h1>이런! 로그인에 실패하였습니다..</h1><br>
		<h4>아이디와 비밀번호를 확인하여 주십시오.</h4>
	</div>
	<div class="row" style="place-content: center;">
		<button id="loginButton" type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">다시 로그인 하기</button>
		<button class="btn btn-primary" onclick="location.href='/home'">홈으로 가기</button>
	</div>
</div>

</body>

<%@ include file="/WEB-INF/views/layouts/footer.jsp"%>