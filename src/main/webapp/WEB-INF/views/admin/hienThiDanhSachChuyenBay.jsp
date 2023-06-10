<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách chuyến bay</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>DANH SÁCH CHUYẾN BAY</h3>
			<div class="row">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<p style="color: red; text-align: center;">${msg}</p>
				</div>
				<div class="col-lg-4"></div>
			</div>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<section>
							<table class="table table-hover">
								<thead class="thead">
									<tr>
										<th>Mã chuyến bay</th>
										<th>Mã tuyến bay</th>
										<th>Tên máy bay</th>
										<th>Ngày khời hành</th>
										<th>Giờ khời hành</th>
										<th>Thời gian bay dự kiến</th>
										<th>Giá chuyến bay</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${list}" varStatus="status">
										<tr>
											<td>${c[0].maChuyenBay}</td>
											<td>${c[1].maTuyenBay}</td>
											<td>${c[3].tenMayBay}</td>
											<td>${c[0].ngayKhoiHanh}</td>
											<td>${c[0].gioKhoiHanh}</td>
											<td>${c[0].thoiGianBayDuKien}</td>
											<td>${c[0].giaChuyenBay*lv.heSoGia}</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/ve/dat-ve/${c[0].maChuyenBay}?loaive=${lv.maLoaiVe}">
													<button type="button" class="btn btn-warning">Chọn
														vé</button>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- Phân trang -->
							<ul class="pagination" style="float: right">
								<c:if test="${currentPage > 1}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/ve/tim-ve?page=${currentPage-1}">Previous</a></li>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<li class="page-item"><a class="active"> ${i} </a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a href="${pageContext.request.contextPath}/admin/ve/tim-ve?page=${i}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<c:if test="${currentPage lt totalPages}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/ve/tim-ve?page=${currentPage+1}">Next</a></li>
								</c:if>
							</ul>
						</section>
					</div>
					<!-- /content-panel -->
				</div>
				<!-- /col-lg-4 -->
			</div>
			<!-- /row -->
		</section>
	</section>
	<!--main content end-->
</body>
</html>