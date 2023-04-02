<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					style="width: 800px; height: 600px">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<!--                 <div class="row" style="width:700px; height: 800px "> -->
						<div class="col-lg-7">
							<div class="p-5" style="width: 800px; height: 500px">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">게시글 작성</h1>
								</div>
								<form role="form" action="/board/register" method="post">
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input name="b_title" class="form-control form-control-user"
												id="b_title" placeholder="제목">
										</div>
										<div class="col-sm-6">
											<input name="board_writer"
												class="form-control form-control-user" id="board_writer"
												placeholder="작성자">
										</div>
									</div>

									<div class="form-group">
										<input name="b_content" class="form-control form-control-user"
											id="b_content" placeholder="내용" style="height: 300px">
									</div>
							</div>
							<button type="submit" class="btn btn-dark btn-user btn-block"
								style="margin: auto; text-align: center; width: 780px">작성완료</button>
							<a href="/board/list" class="btn btn-secondary btn-user btn-block"
								style="margin: auto; text-align: center; width: 780px"> 취소 </a>
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

</body>

</html>