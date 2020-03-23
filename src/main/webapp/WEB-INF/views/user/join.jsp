<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/layouts/header.jsp"%>

<<script type="text/javascript">

$(document).ready(function() {
	$("#stuser_id_join").on("blur", function() {
		
		$.ajax ({
			url : "/user/isID",
			data : {
				stuser_id: $("#stuser_id_join").val()
			},
			method:"POST",
			dataType:"json",
			success: function(data){
				var emailCheck = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
				
				if(emailCheck.test($("#stuser_id_join").val())){
					if(data){
						$(".div_isID")
						.html('<p style="color:#04B431">사용 가능한 아이디 입니다.</p>');
					} else {
						$(".div_isID")
						.html('<p style="color:#FA5858">중복된 아이디 입니다.</p>');
					}
				} else {
					$(".div_isID")
					.html('<p style="color:#FA5858">양식에 맞지 않는 아이디 입니다.</p>');
				}
				
			}
		})
	})
	
	$("#stuser_nick").on("blur", function() {
		
		$.ajax ({
			url : "/user/isNick",
			data : {
				stuser_nick: $("#stuser_nick").val()
			},
			method:"POST",
			dataType:"json",
			success: function(data){
				var nickNameCheck = RegExp(/^[가-힣a-zA-Z0-9]{2,10}$/);
				
				if(nickNameCheck.test($("#stuser_nick").val())){
					if(data){
						$(".div_isNick")
						.html('<p style="color:#04B431">사용 가능한 닉네임 입니다.</p>');
					} else {
						$(".div_isNick")
						.html('<p style="color:#FA5858">중복된 닉네임 입니다.</p>');
					}
				} else {
					$(".div_isNick")
					.html('<p style="color:#FA5858">양식에 맞지 않는 닉네임 입니다.</p>');
				}
				
			}
		})
	})
	
	$("#stuser_pw_join").on("blur", function() {
		
		$.ajax ({
			url : "/user/isPW",
			data : {
				stuser_pw: $("#stuser_pw_join").val()
			},
			method:"POST",
			dataType:"json",
			success: function(data){
				var passwdCheck = RegExp(/^[a-zA-Z0-9!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]{8,20}$/);
				
				if(passwdCheck.test($("#stuser_pw_join").val())){
					$(".div_isPW")
					.html('<p style="color:#04B431">사용 가능한 비밀번호 입니다.</p>');
				} else {
					$(".div_isPW")
					.html('<p style="color:#FA5858">양식에 맞지 않는 비밀번호 입니다.</p>');
				}
			}
		})
		
	})
	
	$("#stuser_pw_check").on("blur", function() {
		
		$.ajax ({
			url : "/user/isPWCheck",
			data : {
				stuser_pw: $("#stuser_pw_join").val(),
				stuser_pw_check: $("#stuser_pw_check").val()
			},
			method:"POST",
			dataType:"json",
			success: function(data){
				var passwdCheck = RegExp(/^[a-zA-Z0-9!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]{8,20}$/);
				
				if($("#stuser_pw_join").val() == $("#stuser_pw_check").val()){
					$(".div_isPWCheck")
					.html('<p style="color:#04B431">비밀번호가 일치합니다.</p>');
				} else {
					$(".div_isPWCheck")
					.html('<p style="color:#FA5858">비밀번호가 일치하지 않습니다.</p>');
				}
			}
		})
		
	})
	
	$(".btn_join").on("click", function() {
	
		$.ajax ({
			url:"/user/joinProc",
			method:"POST",
			dataType:"json",
			data:{
				stuser_id: $("#stuser_id_join").val(),
				stuser_pw: $("#stuser_pw_join").val(),
				stuser_nick: $("#stuser_nick").val(),
				stuser_gender: $("#stuser_gender").val(),
				stuser_age: $("#stuser_age").val(),
				stuser_loc: $("#stuser_loc").val()
			},
			success:function(data) {
				if(data){
					alert("가입 완료. 입력한 정보로 다시 로그인 해주세요.");
					location.replace('/home');
				} else {
					alert("가입 실패. 입력하신 정보를 다시 확인해주세요.")
				}
			}
		})
	})
	
})
</script>

<style type="text/css">
.form-control .join{
	width:350px;
}

</style>

<br>

<body>
	<div class="container" style="min-height:630px">
	<br>
	<form onsubmit="return false;">
	<div style="text-align:-webkit-center;">
		
		<table>
			<tr>
				<td colspan="2">
					<strong>아이디</strong>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input 
					id="stuser_id_join" 
					class="form-control join" 
					type="email" 
					name="stuser_id" 
					placeholder="example@example.example"
					required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div style="height:24px;" class="div_isID"></div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<strong>비밀번호</strong>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input 
					id="stuser_pw_join" 
					class="form-control join" 
					type="password" 
					name="stuser_pw" 
					placeholder="영문+숫자로 8~20글자"
					required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div style="height:24px;" class="div_isPW"></div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<strong>비밀번호 확인</strong>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input 
					id="stuser_pw_check" 
					class="form-control join" 
					type="password"
					required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div style="height:24px;" class="div_isPWCheck"></div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<strong>닉네임</strong>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input 
					id="stuser_nick" 
					class="form-control join" 
					type="text" 
					name="stuser_nick" 
					placeholder="한글 or 영문으로 2~10글자"
					required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div style="height:24px;" class="div_isNick"></div>
				</td>
			</tr>
			<tr>
				<td><strong>성별</strong></td>
				<td><strong>나이</strong></td>
			</tr>
			<tr>
				<td style="width:175px">
					<select style="width:175px"class="form-control join" id="stuser_gender" name="stuser_gender">
						<option value="M">남자</option>
						<option value="W">여자</option>
					</select>
				</td>
				<td>
					<input 
					style="width:175px" 
					id="stuser_age" 
					class="form-control join" 
					type="text" 
					name="stuser_age" 
					placeholder="숫자만 입력"
					required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<strong>위치</strong>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<select class="form-control join" id="stuser_loc" name="stuser_loc">
	 					<option value="서울">서울</option>
	  					<option value="경기">경기</option>
	  					<option value="인천">인천</option>
	  					<option value="부산">부산</option>
	  					<option value="대구">대구</option>
	  					<option value="광주">광주</option>
	  					<option value="대전">대전</option>
	  					<option value="울산">울산</option>
	  					<option value="강원">강원</option>
	  					<option value="경남">경남</option>
	  					<option value="경북">경북</option>
	  					<option value="전남">전남</option>
	  					<option value="전북">전북</option>
	  					<option value="충남">충남</option>
	  					<option value="충북">충북</option>
	  					<option value="제주">제주</option>
	  					<option value="세종">세종</option>
					</select>
				</td>
			</tr>		
		</table>
	</div>
	
	<div style="text-align:center;margin-top:20px">
		<button style="width:352px;height:54px;"class="btn btn-primary btn_join" type="button">가입하기</button>
	</div>
	</form>
	
	</div>

</body>

<%@ include file="/WEB-INF/views/layouts/footer.jsp"%>
