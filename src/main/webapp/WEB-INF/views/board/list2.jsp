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
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="검색할 내용을 입력해 주세요" aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-secondary" type="button">
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
							<a class="m-0 font-weight-bold text-secondary" href="#"><strong>게시글 모음</strong></a>
							<a target="_blank" href="/board/register" style="display: inline-block; margin: 0 5px;  float: right;">게시글 작성</a>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>작성일</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${list}" var="board">
									<tr>
									<td><c:out value="${board.bno}" /></td>
									<td><a href='/board/get?bno=<c:out value="${board.bno}"/>'>
									<c:out value="${board.title}" /></a></td>
									<td><c:out value="${board.content}" /></td>
									<td><c:out value="${board.writer}" /></td>
									<td>﻿<fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate}" /></td>
									</c:forEach>
									<tr>
									</tbody>
								</table>
<!-- 						페이징처리 자리	  -->
							<div class="pull-right">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li class="paginate_button previous">
										<a href="${pageMaker.startPage -1}">이전</a></li>
									</c:if>
									
									<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""}">
									<a href="${num}">${num}</a></li>
									</c:forEach>

								<c:if test="${pageMaker.next}">
										<li class="paginate_button next">
										<a href="${pageMaker.endPage +1}">다음</a></li>
									</c:if>
								</ul>
							</div>
<!-- 							페이징처리 여기까지  -->
						<form id='actionForm' action="/board/list" method='get'>
							<input type='hidden' name='pageNum'	value='${pageMaker.cri.pageNum}'> 
							<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
						</form>




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
	var result = '<c:out value="${result}"/>'; });
</script>

<script type="text/javascript">
            	$(document).ready(function() {
            		var result='<c:out value="${result}"/>';
            		checkModal(result);
            		
            		function checkModal(result) {
            			if(result==='') {
            				return;
            			}
            			
            			if(parseInt(result) > 0) {
            				$(".modal-body").html(parseInt(result) + "번째 게시글이 등록되었습니다.");
            			}
            			
            			$("#myModal").modal("show");
            		}
            	});
            </script>
<%@ include file="../include/footer.jsp" %>