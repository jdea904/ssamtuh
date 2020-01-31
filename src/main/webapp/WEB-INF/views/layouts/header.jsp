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
<link rel="stylesheet" href="/resources/css/ssamtuh.css">
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
</head>
<div style="height: 230px;">
	<div class="container" style="height: 180px;">
		<div class="row" style="height: 180px;">
			<div class="col-3">
				<img id="logo" src="/resources/img/쌈터_로고.png"/>
			</div>
			<div class="col-6" style="align-self: center">
						<label for="search"><strong>사이트 전체 검색</strong></label>
				<form class="form-inline">
					<div class="row" class="input-group flex-fill">
						<input style="width:500px"id="search" type="text" class="form-control" placeholder="검색어를 입력하세요."/>
							<div class="input-group-append">
								<button class="btn btn-primary"><i class="fas fa-search"></i>검색</button> 
							</div><br>
							<div>
								<p><strong>오늘의 이슈 : </strong> <a style="color:grey" href="/d/d">asdasd</a> | <a style="color:grey" href="/d/d">asdasd</a> | <a style="color:grey" href="/d/d">asdasd</a><p>
							</div>
					</div>
				</form>
			</div>
			<div class="col-3" style="align-self: center;">
				<form action="" method="POST">
					<table>
						<tr>
							<th>
								ID
							</th>
							<td>
								<input class="form-control" type="text" name="stuser_id">
							</td>
						</tr>
						<tr>
							<th>
								PW
							</th>
							<td>
								<input class="form-control" type="password" name="stuser_pw">
							</td>
						</tr>
					</table>
					<div class="row" style="place-content: center;">
							<button class="btn btn-primary">로그인</button>
							<button class="btn btn-primary">회원가입</button>
					</div>
				</form>
			</div>
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

<body>


<!-- </body> -->
<!-- </html> -->