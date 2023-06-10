<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách chuyến bay</title>
<style>
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH CHUYẾN BAY</h3>
			<div class="row mt list">
				<div class="col-lg-10">
					<div class="content-panel">
						<!-- Search -->
						<div style="float: right">
							<form
								action="${pageContext.request.contextPath}/admin/chuyen-bay/danh-sach-chuyen-bay/tim-kiem">
								<input type="text" placeholder="Tìm kiếm theo mã chuyến bay"
									name="search" style="width: 190px" />
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
							<br />
						</div>
						<section id="unseen">
							<table class="table table-hover table-sm">
								<thead>
									<tr class="thead">
										<th>Mã chuyến bay</th>
										<th>Mã tuyến bay</th>
										<th>Mã máy bay</th>
										<th>Ngày khời hành</th>
										<th>Giờ khời hành</th>
										<th>Thời gian bay dự kiến</th>
										<th>Giá chuyến bay</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="abc" items="${chuyenBays}" varStatus="status">
										<tr>
											<td>${abc.maChuyenBay}</td>
											<td>${abc.tuyenBay.maTuyenBay}</td>
											<td>${abc.mayBay.maMayBay}</td>
											<td>${abc.ngayKhoiHanh}</td>
											<td>${abc.gioKhoiHanh}</td>
											<td>${abc.thoiGianBayDuKien}Phút</td>
											<td><fmt:formatNumber pattern="#,###.## VND"
													type="currency" currencySymbol="VND " maxFractionDigits="3"
													value="${abc.giaChuyenBay}" /></td>
											<td style="display: flex; justify-content: space-around">
												<a
												href="${pageContext.request.contextPath}/admin/chuyen-bay/cap-nhat/${abc.maChuyenBay}">
													<button type="button" class="btn btn-info">Chỉnh
														sửa</button>
											</a> <a
												href="${pageContext.request.contextPath}/admin/chuyen-bay/xoa/${abc.maChuyenBay}">
													<button type="button" class="btn btn-danger"
														onclick="return confirm('Bạn thực sự muốn xóa dữ liệu này?')">Xóa</button>
											</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<p style="color: red">${messageCapNhat}</p>
							<p style="color: green">${messageSauCapNhat}</p>
							<p style="color: green">${messageSauXoa}</p>
							<!-- Phân trang -->
							<div class="pagination">
								<c:if test="${currentPage > 1}">
									<a
										href="${pageContext.request.contextPath}/admin/chuyen-bay/danh-sach-chuyen-bay/tim-kiem?search=${timKiem}&page=${currentPage-1}">Previous</a>
								</c:if>
								<c:if test="${1 lt (currentPage-10)}">
									<a
										href="${pageContext.request.contextPath}/admin/chuyen-bay/danh-sach-chuyen-bay/tim-kiem?search=${timKiem}&page=${currentPage-10}">...</a>
								</c:if>
								<c:if test="${(currentPage+10) lt totalPages}">
									<c:forEach begin="${currentPage}" end="${currentPage+10}"
										var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<a class="active"> ${i} </a>
											</c:when>
											<c:otherwise>
												<a
													href="${pageContext.request.contextPath}/admin/chuyen-bay/danh-sach-chuyen-bay/tim-kiem?search=${timKiem}&page=${i}">${i}</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
								<c:if test="${totalPages <= (currentPage+10)}">
									<c:forEach begin="${currentPage}" end="${totalPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<a class="active"> ${i} </a>
											</c:when>
											<c:otherwise>
												<a
													href="${pageContext.request.contextPath}/admin/chuyen-bay/danh-sach-chuyen-bay/tim-kiem?search=${timKiem}&page=${i}">${i}</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
								<c:if test="${(currentPage+10) lt totalPages}">
									<a
										href="${pageContext.request.contextPath}/admin/chuyen-bay/danh-sach-chuyen-bay/tim-kiem?search=${timKiem}&page=${currentPage+10}">...</a>
								</c:if>
								<c:if test="${currentPage lt totalPages}">
									<a
										href="${pageContext.request.contextPath}/admin/chuyen-bay/danh-sach-chuyen-bay/tim-kiem?search=${timKiem}&page=${currentPage+1}">Next</a>
								</c:if>
							</div>
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