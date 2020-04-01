<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/layouts/header.jsp"%>

<br>

<body>

<div class="container" style="min-height:600px;">
	
	<div class="row">
		<div class="col-8">
			<div class="div_banner">
				<img class="img_banner" src="/resources/img/광고배너샘플.jpg" />
			</div>
		</div>
		<div class="col-4">
			<div class="div_total row">
				<div class="div_total_display col-6">
					<div>
						<strong>오늘의 토론 등록</strong><br>
						1,083,347개
					</div>
				</div>
				<div class="div_total_display col-6">
					<div>
						<strong>오늘의 게시글 등록</strong><br>
						2,983,487개
					</div>
				</div>
			</div>
			<div class="div_total row">
				<div class="div_total_display col-6">
					<div>
						<strong>오늘의 새 댓글</strong><br>
						3,683,227개
					</div>
				</div>
				<div class="div_total_display col-6">
					<div>
						<strong>오늘의 신규회원</strong><br>
						10,269명
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row"><div class="line_horizontal col-12"><h4>토론</h4></div></div>
	<div class="row">
		<div class="col-8">
<!-- 			<div class="div_frame_discussion"> -->
			<div>
				<div><h3>&nbsp;<i class="fas fa-balance-scale"></i>&nbsp;<a style="color:black" href="#">금주의 격론 TOP 5</a></h3></div>
				<div class="row div_frame" style="height:150px">
					<div class="col-5">
						<div class="div_frame" style="height:144px"><img class="discussion_thumb"src="/resources/img/코로나바이러스.jpg" /></div>
					</div>
					<div class="col-7">
						<div class="div_frame">[정치]</div>
						<div class="div_frame"><marquee><h4>신종 코로나 바이러스에 대한 대한민국 정부의 대응은 바람직한가?</h4></marquee></div>
						<div class="div_frame" style="float:right">
							<table>
								<tr>
									<th>작성자 : </th>
									<td><img style="width:41px;height:41px"class="img-circle">관리자1</td>
								</tr>
								<tr>
									<th>기한 : </th>
									<td>2020-01-04 ~ 2020-03-25</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="row div_frame" style="height: 20px">달성도</div>
				<div class="" style="height: 40px">
					<div class="progress" style="height: 35px">
						<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
    						45% 달성 ( 90/200 )
  						</div>
					</div>
				</div>
			</div>
			
			<div class="row"><div class="line_horizontal_mini col-12"></div></div>
			
			<div>
				<div><h3>&nbsp;<i class="fas fa-balance-scale"></i>&nbsp;<a style="color:black" href="#">신규 토론 안건</a></h3></div>
				<div class="row div_frame" style="height:150px">
					<div class="col-5">
						<div class="div_frame" style="height:144px"><img class="discussion_thumb"src="/resources/img/유기강아지.jpg" /></div>
					</div>
					<div class="col-7">
						<div class="div_frame">[반려동물]</div>
						<div class="div_frame"><marquee><h4>유기견 안락사에 대해 어떻게 생각하시나요</h4></marquee></div>
						<div class="div_frame" style="float:right">
							<table>
								<tr>
									<th>작성자 : </th>
									<td><img style="width:41px;height:41px"class="img-circle">관리자1</td>
								</tr>
								<tr>
									<th>기한 : </th>
									<td>2020-03-25 ~ 2020-04-25</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="row div_frame" style="height: 20px">달성도</div>
				<div class="" style="height: 40px">
					<div class="progress" style="height: 35px">
						<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width:25%">
    						25% 달성 ( 50/200 )
  						</div>
					</div>
				</div>
			</div>
<!-- 		</div> -->
		</div>
		<div class="col-1">
			<div class="line_vertical"></div>
		</div>
		<div class="col-3">
			<div><h5>&nbsp;<i class="fas fa-crown"></i>&nbsp;<a style="color:black" href="#">토론 참여 랭킹</a></h5></div>
			<div>
				<table class="table table-hover ranking">
					<tr>
						<td class="ranking_Top1"><strong style="color:#F1D207">1위 </strong><img style="width:41px;height:41px"class="img-circle"> <strong><a href="#">초코대호</a></strong></td>
					</tr>
					<tr>
						<td><strong style="color:#BDBDBD">2위 </strong><a href="#">울팀이제큰일났다</a></td>
					</tr>
					<tr>
						<td><strong style="color:#B18904">3위 </strong><a href="#">안녕하십니꺼</a></td>
					</tr>
					<tr>
						<td><strong>4위 </strong><a href="#">꿀렁꿀렁</a></td>
					</tr>
					<tr>
						<td><strong>5위 </strong><a href="#">은명장</a></td>
					</tr>
					<tr>
						<td><strong>6위 </strong><a href="#">홈키파맨</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="row"><div class="line_horizontal col-12"><h4>커뮤니티</h4></div></div>
	<div class="row">
		<div class="col-8">
			<div><h3>&nbsp;<i class="far fa-copy"></i>&nbsp;<a style="color:black" href="#">인기글 TOP 10</a></h3></div>
			<div class="boardTOP20_list row">
				<div class="col-6">
					<table class="table table-hover">
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[사건/사고]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[정치]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[경제]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[반려동물]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[사건/사고]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
					</table>
				</div>
				<div class="col-6">
					<table class="table table-hover">
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[건강]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[게임]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[테크]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[사건/사고]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP10_category"><div class="div_boardTOP10_category">[정치]</div></th>
							<td class="boardTOP10_title"><div class="div_boardTOP10_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
					</table>
				</div>
			</div>
			
			<div class="row"><div class="line_horizontal_mini col-12"></div></div>
			
			<div><h3>&nbsp;<i class="fas fa-copy"></i>&nbsp;<a style="color:black" href="#">최신글 TOP 20</a></h3></div>
			<div class="boardTOP20_list row">
				<div class="col-6">
					<table class="table table-hover">
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[사건/사고]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[정치]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[경제]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[반려동물]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[사건/사고]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[사건/사고]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[정치]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[경제]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[반려동물]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[사건/사고]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
					</table>
				</div>
				<div class="col-6">
					<table class="table table-hover">
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[건강]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[게임]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[테크]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[사건/사고]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[정치]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[건강]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[게임]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[테크]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[사건/사고]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
						<tr>
							<th class="boardTOP20_category"><div class="div_boardTOP20_category">[정치]</div></th>
							<td class="boardTOP20_title"><div class="div_boardTOP20_title"><a href="#">우르흐히히히히히히히히히히ㅣㅎ히</a></div></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col-1">
			<div class='line_vertical'></div>
		</div>
		<div class="col-3">
			<div><h5>&nbsp;<i class="fas fa-medal"></i>&nbsp;<a style="color:black" href="#">커뮤니티 참여 랭킹</a></h5></div>
			<div>
				<table class="table table-hover ranking">
					<tr>
						<td class="ranking_Top1"><strong style="color:#F1D207">1위 </strong><img style="width:41px;height:41px"class="img-circle"> <strong><a href="#">초코대호</a></strong></td>
					</tr>
					<tr>
						<td><strong style="color:#BDBDBD">2위 </strong><a href="#">울팀이제큰일났다</a></td>
					</tr>
					<tr>
						<td><strong style="color:#B18904">3위 </strong><a href="#">안녕하십니꺼</a></td>
					</tr>
					<tr>
						<td><strong>4위 </strong><a href="#">꿀렁꿀렁</a></td>
					</tr>
					<tr>
						<td><strong>5위 </strong><a href="#">은명장</a></td>
					</tr>
					<tr>
						<td><strong>6위 </strong><a href="#">내가바로토론왕</a></td>
					</tr>
				</table>
			</div>
		</div>
		
		
	</div>
	
	<div class="row"><div class="line_horizontal col-12"><h4>공지사항</h4></div></div>
	
	<div class="row">
		<div class="div_frame_notice col-6">
			<div class="div_notice">
				<div><h3>&nbsp;<i class="far fa-star"></i>&nbsp;<a style="color:black" href="#">사이트 이용 관련 공지</a></h3></div>
				<div class="div_notice_table">
					<table class="table table-hover">
						<c:forEach items="${ boardList }" var="i">
							<tr>
								<td class="miniboard_tit"><div class="div_miniboard_tit"><a href="/d/d?stboard_idx=${i.stboard_idx }"><strong>[${i.stboard_category}]</strong> ${i.stboard_title }</a></div></td>
								<td class="miniboard_writer"><div class="div_miniboard_writer"><strong>${i.stuser_nick }</strong></div></td>
								<td class="miniboard_date"><div><fmt:formatDate value="${i.stboard_date}" pattern="yyyy-MM-dd"/></div></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<div class="col-6">
		
		</div>
	</div>
	
</div>
	
	


</body>

<%@ include file="/WEB-INF/views/layouts/footer.jsp"%>

