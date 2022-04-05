<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>헝픽 나의 질문</title>
    
   	<link href="resources/css/sb-admin-2.css" rel="stylesheet">
	<script src="https://kit.fontawesome.com/730c440743.js" crossorigin="anonymous"></script>
	<script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/qna/Questionlist.js"></script>
    
</head>

<body id="page-top">
	<!-- 페이지 Wrapper 시작 -->
	<div id="wrapper">
	<!-- 사이드바 -->
	<jsp:include page="PageSide.jsp" flush="false"/>
	<!-- 컨텐츠 Wrapper 시작 -->
	<div id="content-wrapper" class="d-flex flex-column">
	<!-- 상단 -->
	<jsp:include page="PageHeader.jsp" flush="false"/>
					
		<!-- 메인 -->
		<div id="content">
			<div class="container-fluid">
				<div class="row">
					<div class="card d-inline-block w-100 h-100 shadow mt-3 mb-3">
						<div class="card-body">
							<div class="h1 mb-3">
								나의 질문
							</div>
							<form name="paging">
								<c:choose>
									<c:when test="${not empty listpage}">
										<table class="table">
											<thead>
												<tr>
													<td width=350>제목</td>
													<td width=150 class="text-center">작성일</td>
													<td width=80 class="text-center">답변여부</td>
												</tr>
											</thead>
											<c:forEach var="list" items="${ listpage }">
												<tr>
													<td><a href="javascript:view('${list.qesDto.memberCode }','${list.qesDto.qstnCode }')"><c:out value="${list.qesDto.qstnTitle}" /></a></td>
													<td class="text-center"><c:out value="${list.qesDto.qstnDate}" /></td>
													<td class="text-center"><c:out value="${list.qesDto.qstnConfirm}" /></td>
												</tr>
											</c:forEach>
										</table>
									</c:when>
									
									<c:otherwise>
										<div class="h4 text-center">작성한 질문이 없습니다</div>
									</c:otherwise>
								</c:choose>
									<hr>
									<div class="text-center">
										<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
											<a class="mr-1" href="Questionlist?page=${idx}">${idx}</a>
										</c:forEach>
									</div>
									<input class="btn btn-warning" type="button" value="작성" onClick="insert()">
									<input type="hidden" name="memberCode" /> 
									<input type="hidden"name="qstnCode" />
									<input type="hidden" id="code" value="${list.qesDto.qstnCode}"/>
									<input type="hidden" id="name" value="${list.memberDto.memberName}"/>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 메인 컨텐츠 끝 -->
			
	<!-- 하단 -->
	<jsp:include page="PageFooter.jsp" flush="false"/>
	<!-- 컨텐츠 Wrapper 끝 -->
	</div>
	<!-- 페이지 Wrapper 끝 -->
	</div>
	<!-- 페이지 상단 버튼 -->
	<jsp:include page="PageTopBtn.jsp" flush="false"/>
	
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/sb-admin-2.min.js"></script>
    
</body>
</html>