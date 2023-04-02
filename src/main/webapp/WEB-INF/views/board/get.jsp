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


<body class="bg-gray-500">
<div class="row" >
	<div class="col-lg-12">
		<h1 class="page-header"></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		<br>
			<div class="panel-heading" style="margin: auto; text-align: center;"><h1 class="h4 text-gray-900 mb-4">게시글 조회</h1></div>
			<!-- /.panel-heading -->
			<div class="panel-body" style="margin: auto; text-align: center; width: 780px">
				<div class="form-group">
									<input name="bno" class="form-control form-control-user"
										id="bno" placeholder="bno"
										value='<c:out value="${board.bno}" ></c:out>'
										readonly="readonly">
								</div>
								<div class="form-group row" >

									<div class="col-sm-6 mb-3 mb-sm-0">
										<input name="title" class="form-control form-control-user"
											id="title" placeholder="제목"
											value='<c:out value="${board.title}" ></c:out>'
											readonly="readonly">
									</div>
									<div class="col-sm-6">
										<input name="board_writer"
											class="form-control form-control-user" id="bno"
											placeholder="작성자"
											value='<c:out value="${board.writer}" ></c:out>'
											readonly="readonly">
									</div>
								</div>

								<div class="form-group">
									<input name="content" class="form-control form-control-user"
										id="content" placeholder="내용" style="height: 300px"
										value='<c:out value="${board.content}" />' readonly="readonly">
								</div>
							</div>
						</div>
						<button data-oper='modify' class="btn btn-dark btn-user btn-block"
							style="margin: auto; text-align: center; width: 780px"
							onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">수정
						</button>
						<button data-oper='remove'
							class="btn btn-secondary btn-user btn-block"
							style="margin: auto; text-align: center; width: 780px"
							onclick="location.href='/board/remove?bno=<c:out value="${board.bno}"/>'">삭제
						</button>
						<button data-oper='list' 
							class="btn btn-dark btn-user btn-block"
							style="margin: auto; text-align: center; width: 780px"
							onclick="location.href='/board/list'">
							취소</button>

						<!-- 							</form> -->

						<form id=operForm action="/board/modify" method="get">
							<input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}" />'> 
							<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}" /> '> 
							<input type="hidden" name="amount" value='<c:out value="${cri.amount}" />'> 
							<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}" />'> 
							<input type="hidden" name="type" value='<c:out value="${cri.type}" />'> 
						</form>
			</div>
			<!-- /.panel-body -->
					<!-- 	댓글목록 나오게하는곳 -->
	<div class='row' style="margin: auto; text-align: left; width: 780px">
		<div class="col-lg-12" style="background-color:bg-gray-200; ">
			<div class="panel panel-default">
<!-- 				<div class="panel-heading" > -->
<!-- 					<i class="fa fa-comment fa-fw"></i> 댓글 목록 -->
<!-- 				</div> -->
				<div class="panel-heading" >
					<i class="fa fa-comment fa-fw"></i> 댓글 목록
					<button id='addReplyBtn' class="btn btn-secondary btn-xs pull-right">댓글쓰기</button>
				</div>
				<div class="panel-body">
					<ul class="chat">
						<li class="left clearfix" data-rno='12'>
							<div>
								
								<div class="header" style="width: 185px; ">
									<strong class="dark-font">user00</strong> 
									<small class="pull-right text-muted" style="margin: auto; text-align: right;">2023-03-30 13:50</small>
<!-- 									<small class="pull-right text-muted">2023-03-30 13:50</small> -->
								</div><p>댓글달기이이</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 	댓글목록 나오게하는곳 -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->


														





	


	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/resources/js/sb-admin-2.min.js"></script>


<!-- Modal -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>Reply</label> 
                <input class="form-control" name='reply' value='New Reply!!!!'>
              </div>      
              <div class="form-group">
                <label>Replyer</label> 
                <input class="form-control" name='replyer' value='replyer'>
              </div>
              <div class="form-group">
                <label>Reply Date</label> 
                <input class="form-control" name='replyDate' value='2018-01-01 13:13'>
              </div>
      
            </div>
<div class="modal-footer">
        <button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
        <button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
        <button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
        <button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
      </div>          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

<script type="text/javascript" src="/resources/js/reply.js"></script>
<script>
//댓글 이벤트처리
$(document).ready(function() {
	var bnoValue = '<c:out value="${board.bno}"/>';
	var replyUL = $(".chat");
	showList(1);
	function showList(page){
		replyService.getList({bno:bnoValue,page:page||1},function(list){
			var str="";
		if(list == null || list.length ==0){
			replyUL.html("");
			return;
		}
		for(var i =0, len =list.length||0; i < len; i++ ){
			str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
			str +="<div><div class='header'><strong class='dark-font'>"+list[i].replyer+"</strong>";
			str +="	<small class="pull-right text-muted" style="margin: auto; text-align: right;">"+replyService.displayTime(list[i].replyDate)+"</small></div>";
// 			str +="	<small class="pull-right text-muted">"+list[i].replyDate+"</small></div>";
			str +="	<p>"list[i].reply+"</p></div></li>";
		}
		//댓글조회
		replyService.get(10, function(data){
		consloe.log(data);
		});
		replyUL.html(str);
		});
	}//end showlist
	var modal = $(".modal");
    var modalInputReply = modal.find("input[name='reply']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	
    	modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
      
      modal.find("input").val("");
      modalInputReplyDate.closest("div").hide();
      modal.find("button[id !='modalCloseBtn']").hide();
      
      modalRegisterBtn.show();
      
      $(".modal").modal("show");
	
});
//     댓글등록 및 목록갱신
	modalRegisterBtn.on("click", function(e) {
         var reply = {
            reply : modalInputReply.val(),
            replyer : modalInputReplyer.val(),
            bno : bnoValue
         };  
         replyService.add(reply, function(result) {
            alert(result);
            modal.find("input").val("");
            modal.modal("hide"); 
            showList(1);
         });
      });
// 	특정댓글의 클릭이벤트 처리
$(".chat").on("click","li",function(e){
	var rno = $(this).data("rno");
	replyService.get(rno,function(reply){
		modalInputReply.val(reply.reply);
		modalInputReplyer.val(reply,replyer);
		modalInputReplyDate.val(replyService.displayTime(reply.replyDate))
		.attr("readonly","readonly");
		modal.data("rno",reply.rno);
		modal.find("button[id !='modalCloseBtn']").hide();
		modalModBtn.show();
		$(".modal").modal("show");
		});
	console.log(rno);
	});
	
// 댓글수정
modalModBtn.on("click","li",function(e){
	var reply = {rno:modal.data("rno"),reply:modalInputReply.val()};
	replyService.update(reply,function(result){
	alert(result);
	modal.modal("hide");
	showList(1);
});
});
// 댓글삭제
modalRemoveBtn.on("click","li",function(e){
	var rno = modal.data("rno");
	replyService.remove(rno,function(result){
		alert(result);
		modal.modal("hide");
		showList(1);
	});
	});

// 댓글목록
console.log("*******************");
console.log("jS TEST");
var bnoValue = '<c:out value="${board.bno}"/>';
replyService.getList({bno:bnoValue, page:1}, function(list){
	for(var i =0, len =list.length||0; i < len; i++ ){
		console.log(list[i]);
	}
});
// 댓글입력
 console.log("*******************");
 console.log("jS TEST");
 var bnoValue = '<c:out value="${board.bno}"/>';
 replyService.add(
 		{reply:"JS Test",replyer:"tester",bno:bnoValue},
 		function(result){
 			alert("RESULT :"+result);
 		}
 		);
//  댓글삭제갱신
replyService.remove(23,function(count){
	console.log(count);
	if(count === "success"){
		alert("삭제완료");
	}
}, function(err){
	alert("ERROR***");
});

//댓글 수정 
replyService.update({
	rno : 22, bno : bnoValue, reply : "Modify reply...."}
	, function(result){
		alert("수정완료");
	
});


</script>
<script type="text/javascript">
$(document).ready(function() {
	console.log(replyService);
});
</script>
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
// 				return;
				formObj.attr("action","/board/list").attr("method","get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
			}
			formObj.submit();
		});
	});
</script>



</body>

</html>