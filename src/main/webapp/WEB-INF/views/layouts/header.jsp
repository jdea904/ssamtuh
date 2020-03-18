<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>+ 지성인들의 토론 공간: 쌈터 +</title>
<!-- jQuery 3.4.1 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<!-- FontAwesome 4.7.0 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap 4.4.1 CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!-- ssamtuh CSS -->
<link rel="stylesheet" href="/resources/css/ssamtuh.css?after">
<!-- BootStrap Component -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<!-- Bootystrap 4.4.1 Script -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script>
	$('#myModal').on('shown.bs.modal', function () {
		$('#myInput').focus()
	})
	
</script>
<script type="text/javascript">
$(document).ready(function() {
	$(".loginbutton").on('click', function() {
		$.ajax({
			url : "/login",			
			data : {
				stuser_id: $("#stuser_id").val(),
				stuser_pw: $("#stuser_pw").val()
			},
			method : "POST",
			dataType : "json"
		}).done(function(data) {
			if(data == true){
				console.log("data");
				$('#login_modal').modal("hide"); 
				location.reload();
			} else {
				console.log("오오오");
				alert("아이디 혹은 비밀번호를 확인하세요.");
			}
		});
		
	});
	
	
})
	
	
</script>
<script type="text/javascript">
function URLReload() {
	console.log("로그앙수");
	window.location.replace("/logout");
}
</script>
<style>

.modal.modal-center {
  text-align: center;
}

@media screen and (min-width: 768px) { 
  .modal.modal-center:before {
    display: inline-block;
    vertical-align: middle;
    content: " ";
    height: 100%;
  }
}

.modal-dialog.modal-center {
  display: inline-block;
  text-align: left;
  vertical-align: middle; 
}

</style>
	
</head>

<header>

<div style="height: 230px;">
	<div class="container" style="height: 180px;">
		<div class="row" style="height: 180px;">
			<div class="col-3">
				<img id="logo" onclick="location.href='/home'" src="/resources/img/쌈터_로고.png"/>
			</div>
			<div class="col-6" style="align-self: center">
						<label for="search"><strong>사이트 전체 검색</strong></label>
				<form class="form-inline">
					<div class="row" class="input-group flex-fill">
						<input style="width:500px"id="search" type="text" class="form-control" placeholder="검색어를 입력하세요."/>
							<div class="input-group-append">
								<button class="btn btn-primary"><i class="fas fa-search-plus"></i>검색</button> 
							</div><br>
							<div>
								<p><strong>오늘의 이슈 : </strong> <a style="color:grey" href="/d/d">asdasd</a> | <a style="color:grey" href="/d/d">asdasd</a> | <a style="color:grey" href="/d/d">asdasd</a><p>
							</div>
					</div>
				</form>
			</div>
				<div class="col-3 loginForm" style="align-self: center;">

			<c:if test="${loggedInUser ne null}">
					<div class="row" style="place-content: center;">
						<strong>${loggedInUser.stuser_nick }</strong>님 환영합니다.
					</div>
					<div class="row" style="place-content: center;">
							<button onclick="URLReload()" id="logoutButton" type="button" class="btn btn-primary logoutButton">로그아웃</button>
							<button class="btn btn-primary">마이페이지</button>
					</div>
			</c:if>
			<c:if test="${loggedInUser eq null }">
					<div class="row" style="place-content: center;">
							<button id="loginButton" type="button" class="btn btn-primary loginButton" data-toggle="modal" data-target=".bs-example-modal-sm">로그인</button>
							<button class="btn btn-primary">회원가입</button>
					</div>
					<div class="row" style="place-content: center;">
						<button class="btn btn-primary">아이디/비밀번호 찾기</button>
					</div>
			</c:if>
				</div>
<!-- 				<div class="col-3 loggedoutForm" style="align-self: center;"> -->
<!-- 				</div> -->
		</div>
	</div>
		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
<!-- 		<div id="top_bar"> -->
			<div class="container" class="collapse navbar-collapse" style="height: 50px;text-align: center;">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="/d/d">토론</a></li>
					<li class="nav-item"><a class="nav-link" href="/d/d">토론</a></li>
					<li class="nav-item"><a class="nav-link" href="/d/d">토론</a></li>
					<li class="nav-item"><a class="nav-link" href="/d/d">토론</a></li>
					<li class="nav-item"><a class="nav-link" href="/d/d">토론</a></li>
				</ul>
			</div>
<!-- 		</div> -->
		</nav>
</div>

<div id="login_modal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
    	<div class="modal-content" style="height:400px">
      		<div style="width:100%; height:40%">
      			<img style="margin-top:2px" class="logo_login" src="/resources/img/쌈터_로고.png"/>
      		</div>
      		<div class="row" style="place-content:center">
      			<div style="padding-top: 3px;">
      			<form class="form-login" onsubmit="return false;">
      				<table>
						<tr>
							<td>
								<input id="stuser_id" class="form-control" type="text" name="stuser_id" placeholder="아이디">
							</td>
						</tr>
						<tr>
							<td>
								<input id="stuser_pw" class="form-control" type="password" name="stuser_pw" placeholder="패스워드">
							</td>
						</tr>
						
					</table>
					<div style="text-align:center">
						<button id="loginbutton" class="btn btn-primary loginbutton" type="button">로그인</button>
						<button class="btn btn-primary">ID/PW찾기</button>
					</div>
					<c:choose>
						<c:when test="${loginCheck == '실패' }">
							<div>
								아이디/비밀번호를 확인하세요.
							</div>
						</c:when>
					</c:choose>
					<div>
					
					</div>
				</form>
				</div>
      		</div>
    	</div>
  	</div>
</div>

</header>

<!-- </body> -->
<!-- </html> -->