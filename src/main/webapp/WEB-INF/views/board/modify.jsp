<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>POST</title>

<!-- Custom fonts for this template-->
<link href="/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-secondary">




	<div style="margin: auto; text-align: center;">
		<!-- 가운데 정렬을 위해 스타일 추가 -->
		<div style="vertical-align: middle; display: inline-block;">
			<!-- 가운데 정렬을 위해 스타일 추가 -->
			<div class="container">

				<div class="card o-hidden border-0 shadow-lg my-5"
					style="width: 800px; height: 680px">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<!--                 <div class="row" style="width:700px; height: 800px "> -->
						<div class="col-lg-7">
							<div class="p-5" style="width: 800px; height: 550px">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">게시글 조회</h1>
								</div>
								<form role="form" action="/board/modify" method="post">
									<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}" /> '> 
									<input type="hidden" name="amount" value='<c:out value="${cri.amount}" />'> 
									<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}" />'> 
									<input type="hidden" name="type" value='<c:out value="${cri.type}" />'>
									<div class="form-group">
										<input name="bno" class="form-control form-control-user"
											id="bno" placeholder="bno"
											value='<c:out value="${board.bno}" ></c:out>'
											readonly="readonly">
									</div>
									<div class="form-group row">

										<div class="col-sm-6 mb-3 mb-sm-0">
											<input name="title" class="form-control form-control-user"
												id="title" placeholder="제목"
												value='<c:out value="${board.title}" ></c:out>'>
										</div>
										<div class="col-sm-6">
											<input name="writer" class="form-control form-control-user"
												id="bno" placeholder="작성자"
												value='<c:out value="${board.writer}" ></c:out>'
												readonly="readonly">
										</div>
									</div>

									<div class="form-group">
										<input name="content" class="form-control form-control-user"
											id="content" placeholder="내용" style="height: 300px"
											value='<c:out value="${board.content}" />'>
									</div>
							</div>
							</div>
<%-- 							<button data-oper='modify' class="btn btn-dark btn-user btn-block" style="margin: auto; text-align: center; width: 780px" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">수정 </button> --%>
<%-- 							<button data-oper='remove' class="btn btn-secondary btn-user btn-block" style="margin: auto; text-align: center; width: 780px" onclick="location.href='/board/remove?bno=<c:out value="${board.bno}"/>'">삭제 </button> --%>
							<button data-oper='modify' class="btn btn-dark btn-user btn-block" style="margin: auto; text-align: center; width: 780px" >수정 </button>
							<button data-oper='remove' class="btn btn-secondary btn-user btn-block" style="margin: auto; text-align: center; width: 780px">삭제 </button>
							<button data-oper='list' class="btn btn-dark btn-user btn-block" style="margin: auto; text-align: center; width: 780px" onclick="location.href='/board/list'"> 취소 </button>
								</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!--     </div> -->

	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/resources/js/sb-admin-2.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form");
		$('button').on("click", function(e) {
			e.preventDefault();
			var operation = $(this).data("oper");
		
			console.log(operation);
		
			if(operation === 'remove') {
				formObj.attr("action", "/board/remove");
			} else if(operation==='list') {
				//move to list
// 				self.location="/board/list";
				formObj.attr("action","/board/list").attr("method","get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				var typeTag = $("input[name='type']").clone();
				
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				formObj.append(keywordTag);
				formObj.append(typeTag);
// 				return;
			}
			formObj.submit();
		});
	});
</script>
</body>

</html>