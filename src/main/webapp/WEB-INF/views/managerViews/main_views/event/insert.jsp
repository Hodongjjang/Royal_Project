<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>manager_event_insert</title>

	<!-- Icons -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

	<!-- Common CSS -->
	<%@ include file="/WEB-INF/views/managerViews/layout/jspf/commonCss.jspf" %>
	
	<!-- Page level CSS -->
	<c:url value="/resources/vendor/manager/datatables/dataTables.bootstrap4.css" var="dataTablesBootstrap4Css" />
	<link href="${dataTablesBootstrap4Css}" rel="stylesheet">
	
</head>

<body id="page-top">
	<div id="wrapper">
		
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/views/managerViews/layout/sidebar.jsp"></jsp:include>
		<!-- Sidebar -->
		
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				
				<!-- TopBar -->
				<jsp:include page="/WEB-INF/views/managerViews/layout/topbar.jsp"></jsp:include>
				<!-- TopBar -->

				<!-- Container Fluid-->
				<div class="container-fluid" id="container-wrapper">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">행사 추가</h1>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../index">Home</a></li>
							<li class="breadcrumb-item">행사</li>
							<li class="breadcrumb-item active" aria-current="page">추가</li>
						</ol>
					</div>

					<!-- Row -->
					<div class="row">

						<!-- 취소창 -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">행사 추가</h6>
								</div>
								<div class="card-body">
									<form>
										<div class="fg_custom_wrapper">
											<div class="fg_custom1">
												<div class="form-group">
													<label for="royal_id">궁 ID</label>
													<input type="text" class="form-control fc_custom" id="royal_id" 
														placeholder="ID">
												</div>
												<div class="form-group">
													<label for="event_type">행사 유형</label>
													<input type="text" class="form-control fc_custom" id="event_type" 
														placeholder="해설 or 행사">
												</div>
												<div class="form-group">
													<label for="event_name">행사 이름</label>
													<input type="text" class="form-control fc_custom" id="event_name" 
														placeholder="이름">
												</div>
												<div class="form-group">
													<label for="event_location">행사 장소</label>
													<input type="text" class="form-control fc_custom" id="event_location" 
														placeholder="주소">
												</div>
												<div class="form-group">
													<label for="start_date">시작일</label>
													<input type="text" class="form-control fc_custom" id="start_date" 
														placeholder="시작일">
												</div>
												<div class="form-group">
													<label for="end_date">종료일</label>
													<input type="text" class="form-control fc_custom" id="end_date" 
														placeholder="종료일">
												</div>
												<div class="form-group">
													<label for="event_link">행사 사이트</label>
													<input type="text" class="form-control fc_custom" id="event_link" 
														placeholder="사이트 주소">
												</div>
												<div class="form-group">
													<label for="event_imgpath">행사 사진</label>
													<input type="text" class="form-control fc_custom" id="event_imgpath" 
														placeholder="사진 경로">
												</div>
												<div class="form-group">
													<label for="reservable">예약가능 여부</label>
													<input type="text" class="form-control fc_custom" id="reservable" 
														placeholder="가능 or 불가">
												</div>
												<div class="form-group">
													<label for="reservable">회차별 인원수</label>
													<input type="text" class="form-control fc_custom" id="reservable" 
														placeholder="인원수">
												</div>
											</div>
											
											<div class="fg_custom2">
												<div class="form-group">
													<label for="reservable" style="margin-right: 7px">회차 설정</label>
													
													<!-- 더하기 버튼 -->
													<button type="button" class="btn btn-success mb-1 btn-custom plusBtn">
														<span style="font-size: 20px;" class="material-symbols-outlined">add</span>
													</button>
									              	
									              	<!-- 빼기 버튼 -->
									              	<button type="button" class="btn btn-warning mb-1 btn-custom minusBtn">
														<span style="font-size: 20px;" class="material-symbols-outlined">remove</span>
													</button>
													
													<!-- 회차 칸 -->
													<div class="input-group mb-3">
														<div class="input-group-prepend">
															<span class="input-group-text" id="basic-addon1">1회차</span>
														</div>
														<input id="round1" type="text" class="form-control" placeholder="운영시간" aria-label="time" aria-describedby="basic-addon1">
													</div>
												</div>
											
											</div>
										</div>
										<button type="submit" class="btn btn-primary">추가하기</button>
									</form>
								</div>
							</div>
						</div>

						<!-- modal -->
						<div class="modal fade" id="detailModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLongTitle"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">경복궁 - 달빛축제</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<h5 class="font-weight-bold">상세 정보</h5>
										<p>
											<div> 행사명 : 달빛축제 </div>
											<div> 장소 : 서울 종로구 사직로 161 경복궁 </div>
											<div> 시작일 : 2024/02/05 </div>
											<div> 종료일 : 2024/02/05 </div>
											<div> 홈페이지 : www.naver.com </div>
										</p>
										<br>
										<h5 class="font-weight-bold">회차 정보</h5>
										<p>
											<div> 1회차 : 4:00 ~ 5:00 </div>
											<div> 2회차 : 4:00 ~ 5:00 </div>
											<div> 3회차 : 4:00 ~ 5:00 </div>
											<div> 4회차 : 4:00 ~ 5:00 </div>
										</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline-primary"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>

						<!-- DataTable with Hover -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">행사 현황</h6>
									<span style="font-size: 15px; font-weight: bold; ">※ 아래 각 행사를 클릭하시면 회차정보 등 상세정보를 보실 수 있습니다.</span>
								</div>
								<div class="table-responsive p-3">
									<table class="table align-items-center table-flush table-hover" id="dataTableHover">
										<thead class="thead-light">
											<tr>
												<th>궁 ID</th>
												<th>행사유형</th>
												<th>행사이름</th>
												<th>행사장소</th>
												<th>시작일</th>
												<th>종료일</th>
												<th>사이트</th>
												<th>사진경로</th>
												<th>예약가능</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>궁 ID</th>
												<th>행사유형</th>
												<th>행사이름</th>
												<th>행사장소</th>
												<th>시작일</th>
												<th>종료일</th>
												<th>사이트</th>
												<th>사진경로</th>
												<th>예약가능</th>
											</tr>
										</tfoot>
										<tbody>
											<tr data-toggle="modal" data-target="#detailModal">
												<td>00</td>
												<td>해설</td>
												<td>궁 투어</td>
												<td>서울 종로구 사직로 161 경복궁</td>
												<td>2024/00/00</td>
												<td>2024/00/00</td>
												<td>naver.com</td>
												<td>!@$!%15125</td>
												<td>가능</td>
											</tr>
											<tr data-toggle="modal" data-target="#detailModal">
												<td>00</td>
												<td>해설</td>
												<td>궁 투어</td>
												<td>서울 종로구 사직로 161 경복궁</td>
												<td>2024/00/00</td>
												<td>2024/00/00</td>
												<td>naver.com</td>
												<td>!@$!%15125</td>
												<td>가능</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!--Row-->
					
				</div>
				<!---Container Fluid-->

			</div>
			
			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/managerViews/layout/footer.jsp"></jsp:include>
			<!-- Footer -->
			
		</div>
	</div>

	<!-- Scroll to top -->
	<a class="scroll-to-top rounded" href="#page-top"> 
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Common JS -->
	<%@ include file="/WEB-INF/views/managerViews/layout/jspf/commonJs.jspf" %>
	
	<!-- Page level plugins -->
	<c:url value="/resources/vendor/manager/datatables/jquery.dataTables.js" var="dataTablesJs" />
	<c:url value="/resources/vendor/manager/datatables/dataTables.bootstrap4.js" var="dataTablesBootstrap4Js" />
  	<script src="${dataTablesJs}"></script>
  	<script src="${dataTablesBootstrap4Js}"></script>
	
	<!-- Page level custom scripts -->
	<script>
		$(document).ready(function () {
		  $('#dataTable').DataTable(); // ID From dataTable 
		  $('#dataTableHover').DataTable(); // ID From dataTable with Hover
		});
	</script>
</body>

</html>