<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
.div_boardview_title {
	font-size:x-large;
}

.div_boardview_writer {

}

.div_hitsreco {
	text-align:right;
}

.div_boardview_content {
	min-height:500px;
}

.div_boardview_recommend {
	text-align: center;
	height:70px;
	
}

.div_boardview_attachment {

}

.div_boardview_btns {
	
}

.div_boardview_comment {

}

.board_top th {
	font-size:16px;
}

.board_list td {
	padding:5px !important;
}

.btn_search {
	height: 80px;
}

.btn_write {
	height: 80px;
}

.

.form_search {
	float: right;
	width: 180px;
}

.selectBox_search {
	float:right;
	width:96px;
}

.div_boardList_title {
	width:383px;
	overflow: hidden; 
	text-overflow: ellipsis; 
	white-space: nowrap;
}

.div_side_content {
	
}

.div_input_searchcondition {
	padding-left:0px !important;
}

.div_input_searchcategory {
	padding-right:0px !important;
}

.form_search {
	padding-top:20px;
}

.table.table-hover.ranking div{
	width: 230px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.div_boardsearchbar {
	padding-right: 0px;
}

.div_boardsearch {
	padding-left: 0px !important;
}

.btn_boardsearch {
	width: 58px;
}
</style>



<%@ include file="/WEB-INF/views/layouts/header.jsp"%>

<br>

<script type="text/javascript">
	$( document ).ready( function() {
		
		var stickyTop = $('.div_side_content').offset().top -324;// get initial position of the element
		
	    $(window).scroll(function() {                  // assign scroll event listener
		    var currentScroll = $(window).scrollTop() - 324;
		    if(currentScroll <= stickyTop){
		        $('.div_side_content').css({                      // if you scroll above it
		        	position: "absolute",
		    		width:"255px",
		        	top:"0px"
		        });
		    }else{
		        $('.div_side_content').css({                      // scroll to that element or below it
		        	position: "absolute",
		    		width: "255px",
		        	top:currentScroll
		        });
		    }
	    });
		
		$(".btn_recommend").click( function() {
			
			$.ajax ({
				url:"/board/recommend",
				method:"GET",
				dataType: "json",
				data : {
					stboard_idx : ${boardView.stboard_idx},
					
				}
			})
			
		})
		
		$(".btn_search").click( function() {
			$(".form_search").slideToggle("fast");
		})
		
		$(".a_board_title").on("click", function() {

			$('.div_board_View').slideToggle("fast");
			
		})
		
		
	});
</script>

<style type="text/css">

</style>


<body>



<div class="container" style="min-height:600px;">
	
	
	<div class="row">
		<div class="line_horizontal col-12"><h4>${boardName.stboardname_name }게시판</h4></div>
	</div>
	
	
	<div class="row">
	
		<div class="col-9" style="font-size:small">
		
			<div class="line_horizontal_mini col-12"></div>

				<div class="div_board_view">
					<div class="col-12 div_boardview_title">
						<strong>[${boardView.stboard_category}]</strong> ${boardView.stboard_title }
					</div>
					<div class="col-12 div_boardview_writer">
						<div class="row">
							<div class="col-10">
								${boardView.stuser_nick } <strong>|</strong> <fmt:formatDate value="${boardView.stboard_date }" pattern="yyyy-MM-dd"/>
							</div>
							<div class="col-2 div_hitsreco">
								조회 ${boardView.stboard_hit } <strong>|</strong> 추천 ${boardView.stboard_recommend }
							</div>
						</div>
					</div>
					
					<div class="line_horizontal_super_mini col-12"></div>
					
					<div class="col-12 div_boardview_content">
						${boardView.stboard_content }
					</div>
					<div class="col-12 div_boardview_recommend">
						<div>
							이 게시물이 마음에 드신다면? <button class="btn btn-primary btn_recommend"><i class="far fa-thumbs-up"></i> 추천!</button>
						</div>
					</div>
					<div class="col-12 div_boardview_attachment">
						<div class="col-12" style="border:2px solid grey;margin-bottom: 15px;">
							<div class="col-2"><strong>첨부파일</strong></div>
							<div class="col-10"></div>
						</div>
					</div>
					<div class="col-12 div_boardview_btns">
						<div class="row">
							<div class="col-6">
								<button class="btn btn-primary"><i class="fas fa-eraser"></i> 수정하기</button>
								<button class="btn btn-primary"><i class="far fa-trash-alt"></i> 삭제하기</button>
							</div>
							<div class="col-6" style="text-align:right">
								<button class="btn btn-primary"><i class="fas fa-list-ul"></i> 댓글 보기</button>
							</div>
						</div>
					</div>
					<div class="col-12 div_boardview_comment">
					</div>
				</div>
			
			<div class="line_horizontal_mini col-12"></div>
			
			<table class="table table-hover" style="font-size:small">
			<tr class="board_top">
				<th class="text-center" style="width:7%">번호</th>
				<th class="text-center" style="width:49%">제목</th>
				<th class="text-center" style="width:15%">닉네임</th>
				<th class="text-center" style="width:15%">작성일</th>
				<th class="text-center" style="width:7%">추천</th>
				<th class="text-center" style="width:7%">조회</th>
			</tr>
			<c:forEach items="${ boardList }" var="i">
				<tr style="text-align:center" class="board_list">
					<td>${ i.stboard_idx }</td>
					<td style="text-align:left;">
						<div class="div_boardList_title">
							<strong>[${i.stboard_category}] </strong> <a class="a_board_title" href ="/board/view?stboardname_no=${ i.stboardname_no }&stboard_idx=${ i.stboard_idx }&curPage=${paging.curPage}">${ i.stboard_title }</a>
						</div>
					</td>
					<td><a href="#">${ i.stuser_nick }</a></td>
					<td><fmt:formatDate value="${i.stboard_date}" pattern="yyyy-MM-dd"/></td>
					<td>${ i.stboard_recommend }</td>
					<td>${ i.stboard_hit }</td>
				</tr>
			</c:forEach>
			</table>
			
			<div class="line_horizontal_mini col-12"></div>
			
			<div class="row" style="place-content: center;">
				<jsp:include page="/WEB-INF/views/layouts/paging.jsp" />
			</div>
			
			
			
		</div>
		<div class="col-3 div_side">
			<div class="div_side_content">
			
				<div class="line_horizontal_mini col-12"></div>
			
				<div><h5>&nbsp;<i class="fas fa-medal"></i>&nbsp;<a style="color:black" href="#">주간 인기글</a></h5></div>
				<div>
					<table class="table table-hover ranking">
						<tr>
							<td><div><strong style="color:#F1D207">1위 </strong><a href="#">우오오오오ㅗㅗㅗㅗㅗ오오오ㅗ오옹ㅇㅇㄴㅁ</a></div></td>
						</tr>
						<tr>
							<td><div><strong style="color:#BDBDBD">2위 </strong><a href="#">울팀이제큰일났다</a></div></td>
						</tr>
						<tr>
							<td><div><strong style="color:#B18904">3위 </strong><a href="#">안녕하십니꺼</a></div></td>
						</tr>
						<tr>
							<td><div><strong>4위 </strong><a href="#">꿀렁꿀렁</a></div></td>
						</tr>
						<tr>
							<td><div><strong>5위 </strong><a href="#">은명장</a></div></td>
						</tr>
						<tr>
							<td><div><strong>6위 </strong><a href="#">내가바로토론왕</a></div></td>
						</tr>
						<tr>
							<td><div><strong>7위 </strong><a href="#">내가바로토론왕</a></div></td>
						</tr>
						<tr>
							<td><div><strong>8위 </strong><a href="#">내가바로토론왕</a></div></td>
						</tr>
						<tr>
							<td><div><strong>9위 </strong><a href="#">내가바로토론왕</a></div></td>
						</tr>
						<tr>
							<td><div><strong>10위 </strong><a href="#">내가바로토론왕</a></div></td>
						</tr>
					</table>
				</div>
				
				<div class="line_horizontal_mini col-12"></div>
			
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
				
				<div class="line_horizontal_mini col-12"></div>
				
				<button class="btn btn-primary btn-lg btn-block btn_write">
					<i class="fas fa-edit"></i> 게시글 작성
				</button>
				
				<div class="row form_search">
					<div class="col">
						<div class="row">
							<div class="col-6 div_input_searchcategory">
								<select class="form-control">
									<option>전체</option>
									<option>카테고리</option>
									<option>카테고리</option>
									<option>카테고리</option>
								</select>
							</div>
							<div class="col-6 div_input_searchcondition">
								<select class="form-control">
									<option>제목</option>
									<option>작성자</option>
									<option>내용</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-9 div_boardsearchbar" style="">
								<input class="form-control" placeholder="검색어를 입력하세요.">							
							</div>
							<div class="col-3 div_boardsearch" style="padding-left: 0px">
								<button class="btn btn-primary btn_boardsearch"><i class="fas fa-search"></i></button>	
							</div>
						</div>	
					</div>
				</div>
				
				
			</div>
			
		</div>
	</div>
	
	

</div>





</body>

<%@ include file="/WEB-INF/views/layouts/footer.jsp"%>

