<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>




		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<form class="form-inline">
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>
					</form>

					<!-- Topbar Search -->
<!-- 					<form id = 'searchForma' action="/board/list" method="get" -->
<!-- 						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"> -->
<!-- 						<div class="input-group"> -->
<!-- 						<input type="hidden" name='type' value="TWC"> -->
<!-- 							<input type="text" name='keyword' class="form-control bg-light border-0 small" -->
<!-- 								placeholder="검색할 내용을 입력해 주세요" aria-label="Search" -->
<!-- 								aria-describedby="basic-addon2"> -->
<%-- 								<input type='hidden' name='pageNum'	value='${pageMaker.cri.pageNum}'>  --%>
<%-- 							<input type='hidden' name='amount' value='${pageMaker.cri.amount}'> --%>
<!-- 							<div class="input-group-append"> -->
<!-- 								<button class="btn btn-default">search</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</form> -->
<form action="/board/list" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                        	<select name="type" id="search" class="form-control bg-light border-0 small" style="font-size: 13px">
								<option value="T">제목</option>
								<option value="C">내용</option>
								<option value="W">작성자</option>
								<option value="TC">제목,내용</option>
								<option value="TW">제목 ,작성자</option>
								<option value="CW">내용 ,작성자</option>
								<option value="TCW">제목,내용,작성자</option>								
							</select> &nbsp;
                            <input type="text" class="form-control bg-light border-0 small" placeholder="검색내용을 입력해 주세요" aria-label="Search" aria-describedby="basic-addon2" name="keyword" value="">
                            <div class="input-group-append">
                                <button class="btn btn-secondary" type="submit">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-secondary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">MY PAGE</span>
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="/MyPage"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									MyPage
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">게시판♪</h1>
					<p class="mb-4">
						프로젝트를 위한 시트와 파워포인트 링크  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a target="_blank" href="https://docs.google.com/presentation/d/1sXTV4J_oZtkemnRQl4FahdAQnaCUg8i7Xko9KipQcbI/edit#slide=id.g20e4e966ac2_0_6">PPT</a>
						<a class="" style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						<a target="_blank" href="https://docs.google.com/spreadsheets/d/1Y36CYourdITulaRTIREGR1fRzsas0EOala2wlz__AF4/edit#gid=0">SHEET</a>
					</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<a class="m-0 font-weight-bold text-secondary" href="/board/Rank"><strong>게시글 모음  (전체 : ${count_all} )</strong> </a>
							<a target="_blank" href="/board/register" style="display: inline-block; margin: 0 5px;  float: right;">게시글 작성</a>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                           <th>번호</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>작성일</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        
                                       <c:forEach items="${list}" var="board">
									<tr>
									<td><c:out value="${board.bno}" /></td>
									<td><a class='move' href='<c:out value="${board.bno}"/>'>
									<c:out value="${board.title}" /></a></td>
									<td><c:out value="${board.content}" /></td>
									<td><c:out value="${board.writer}" /></td>
									<td>﻿<fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate}" /></td>
									</c:forEach>
									<tr>
                                    </tbody>
                                </table>
                                
<!--                                  검색처리 -->
<!-- 							<div class ='row'> -->
<!-- 							<div class='col-lg-12'> -->
<!-- 							<form id='searchForm' action="/board/list" method="get"> -->
<!-- 							<select name='type'> -->
<!-- 							<option value="" <c:out value="{$pageMaker.cri.type == null?'selected':''}"/>>---</option> -->
<!-- 							<option value="T" <c:out value="{$pageMaker.cri.type == 'T'?'selected':''}"/>>제목</option> -->
<!-- 							<option value="C" <c:out value="{$pageMaker.cri.type == 'C'?'selected':''}"/>>내용</option> -->
<!-- 							<option value="W" <c:out value="{$pageMaker.cri.type == 'W'?'selected':''}"/>>작성자 -->
<!-- 							<option value="TC" <c:out value="{$pageMaker.cri.type == 'TC'?'selected':''}"/>> 제목,내용</option> -->
<!-- 							<option value="TW" <c:out value="{$pageMaker.cri.type == 'TW'?'selected':''}"/>>제목,작성자</option> -->
<!-- 							<option value="TWC" <c:out value="{$pageMaker.cri.type == 'TWC'?'selected':''}"/>>제목,작성자,내용</option> -->
<!-- 							</select> -->
<%-- 							<input type='text' name='keyword' value='${pageMaker.cri.keyword}'/>  --%>
<%-- 							<input type='hidden' name='pageNum'	value='${pageMaker.cri.pageNum}'>  --%>
<%-- 							<input type='hidden' name='amount' value='${pageMaker.cri.amount}'> --%>
<!-- 							<button class="btn btn-default">search</button> -->
<!-- 							</form> -->
<!-- 							<form action="/board/list" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"> -->
<!--                         <div class="input-group"> -->
<!--                         	<select name="type" id="search" class="form-control bg-light border-0 small" style="font-size: 13px"> -->
<!-- 								<option value="T">제목</option> -->
<!-- 								<option value="C">내용</option> -->
<!-- 								<option value="W">작성자</option> -->
<!-- 								<option value="TC">제목,내용</option> -->
<!-- 								<option value="TW">제목 ,작성자</option> -->
<!-- 								<option value="CW">내용 ,작성자</option> -->
<!-- 								<option value="TCW">제목,내용,작성자</option>								 -->
<!-- 							</select> &nbsp; -->
<!--                             <input type="text" class="form-control bg-light border-0 small" placeholder="검색할 키워드" aria-label="Search" aria-describedby="basic-addon2" name="keyword" value=""> -->
<!--                             <div class="input-group-append"> -->
<!--                                 <button class="btn btn-secondary" type="submit"> -->
<!--                                     <i class="fas fa-search fa-sm"></i> -->
<!--                                 </button> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </form> -->
<!-- 							</div> -->
<!-- 							</div> -->
							
							
<!-- 						페이징처리 자리	  -->
							<div class="pull-right" >
								     <ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li class="paginate_button previous">
										<a href="${pageMaker.startPage -1}">이전</a></li>
									</c:if>
									
									<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""}">
									<a href="${num}">&nbsp ${num} &nbsp</a></li>
									</c:forEach>

								<c:if test="${pageMaker.next}">
										<li class="paginate_button next">
										<a href="${pageMaker.endPage +1}">다음</a></li>
									</c:if>
								</ul>
							</div>
							
							<form id='actionForm' action="/board/list" method='get'>
							<input type='hidden' name='pageNum'	value='${pageMaker.cri.pageNum}'> 
							<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
							<input type='hidden' name='keyword' value='${pageMaker.cri.keyword}'>
							<input type='hidden' name='type' value='${pageMaker.cri.type}'>
							</form>
<!-- 							페이징처리 여기까지  -->


								<div class="input-group" style="width: 315px;">
						<input type="text" id="pageMove" style="height:30px; width: 187px" class="form-control bg-light border-5 small" placeholder="이동할 페이지 입력"> &nbsp;
					<input type="button" id="pageMoveButton" class="btn btn-secondary btn-icon-split btn-sm" style="width: 60pt; height: 23pt;" value="이동"><div class="input-group-append">	
						
					</div>
				</div>
						
<!-- 						페이지 맨위로 가는 버튼  -->
						<a class="scroll-to-top rounded" href="#page-top" style="display: inline;">
						<i class="fas fa-angle-up"></i>
						</a>


						<!--여기는 모달창 -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
									<h2 class="modal-title" id="myModalLabel">야호</h2>
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										
									</div>
									<div class="modal-body">처리가 완료되었습니다.</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-dark btn-user btn-block"
											data-dismiss="modal">닫기</button>
<!-- 										<button type="button" class="btn btn-primary">Save -->
<!-- 											changes</button> -->
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						
						<!--여기까지 모달창 -->



					</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->
	<script type="text/javascript">
		$(document).ready(function() {
			
			
			
			
// 					상황에 따른 메세지 보여주기 
					var result = '<c:out value="${result}"/>';
					checkModal(result);
					
					

					history.replaceState({},null,null);
// 					여기가 상황
					function checkModal(result) {
						if (result === '' || history.state) {
							return;
						}

						if (parseInt(result) > 0) {
							$(".modal-body").html(
									parseInt(result) + "번째 게시글이 등록되었습니다.");
						}

						$("#myModal").modal("show");
					}
					
// 					검색버튼의 이벤트처리 
// 					var searchForm = $("#searchForm");
// 					$("#searchForm button").on("click",function(e){
						
// 						if(!searchForm.find("option:selected").val()){
// 							alert("검색할 카테고리와 키워드를 입력하세요");
// 							return false;
// 						}
// 						if(!searchForm.find("input[name='keyword']").val()){
// 							alert("키워드를 입력하세요");
// 							return false;
// 						}
// 						searchForm.find("input[name='pageNum']").val("1");
// 						e.preventDefault();
// 						searchForm.submit
// 					});

					$("#pageMoveButton").click(function(e){
						location.href="/board/list?pageNum="+$("#pageMove").val()+"&amount=10";
					});
					
					
// 					페이지 이동을 위한 스크립트
					var actionForm = $("#actionForm");
					
					$(".paginate_button a").on("click", function(e){
						e.preventDefault();
						console.log('click');
						actionForm.find("input[name='pageNum']").val($(this).attr("href"));
						actionForm.submit();
					});
// 					페이지이동후조회를 위한 스크립트
					$(".move").on("click", function(e){
						e.preventDefault();
						actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
						actionForm.attr("action","/board/get");
						actionForm.submit();
					});
					
					
				
		});

	</script>
	<%@ include file="../include/footer.jsp" %>