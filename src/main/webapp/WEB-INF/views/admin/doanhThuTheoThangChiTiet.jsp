<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doanh thu theo tháng hiện tại</title>
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
			<h3>DOANH THU THÁNG CHI TIẾT THEO CHUYẾN BAY</h3>
			<div class="row mt">
				<div class="col-md-12">
					<div class="content-panel">
						<table class="table table-striped table-advance table-hover">
							<div style="float: right">
								<form
									action="${pageContext.request.contextPath}/admin/doanhThuTheoThang/chiTiet/timKiem/${maTuyenBay}"
									method="get">
									<input type="text" placeholder="Tìm kiếm theo mã chuyến bay"
										name="searchKey" style="width: 190px;" />
									<button type="submit">
										<i class="fa fa-search"></i>
									</button>
								</form>
								<br />
							</div>
							<thead>
								<tr>
									<th width="10%">Mã tuyến bay</th>
									<th width="10%">Sân bay đi</th>
									<th width="10%">Sân bay đến</th>
									<th width="10%">Mã chuyến bay</th>
									<th width="10%">Ngày bay</th>
									<th width="10%">Doanh thu vé thương gia</th>
									<th width="10%">Doanh thu vé phổ thông</th>
									<th width="10%">Doanh thu từ dịch vụ thêm</th>
									<th width="10%">Tổng doanh thu</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="abc" items="${doanhThuTheoChuyenBays}"
									varStatus="status">
									<tr>
										<td>${abc.maTuyenBay}</td>
										<td>${abc.sanBayDi}</td>
										<td>${abc.sanBayDen}</td>
										<td>${abc.maChuyenBay}</td>
										<td>${abc.ngayKhoiHanh}</td>
										<td><fmt:formatNumber pattern="#,###.## VND"
												type="currency" currencySymbol="VND " maxFractionDigits="3"
												value="${abc.doanhThuVeThuongGia}" /></td>
										<td><fmt:formatNumber pattern="#,###.## VND"
												type="currency" currencySymbol="VND " maxFractionDigits="3"
												value="${abc.doanhThuVePhoThong}" /></td>
										<td><fmt:formatNumber pattern="#,###.## VND"
												type="currency" currencySymbol="VND " maxFractionDigits="3"
												value="${abc.doanhThuTuDichVuThem}" /></td>
										<td><fmt:formatNumber pattern="#,###.## VND"
												type="currency" currencySymbol="VND " maxFractionDigits="3"
												value="${abc.tongDoanhThu}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /content-panel -->
				</div>
				<!-- /col-md-12 -->
			</div>
			<!-- /row -->
			<div class="pagination">
				<c:if test="${currentPage > 1}">
					<a
						href="${pageContext.request.contextPath}/admin/doanhThuTheoThang/chiTiet/${maTuyenBay}?page=${currentPage-1}">Previous</a>
				</c:if>
				<c:forEach begin="1" end="${totalPages}" var="i">
					<c:choose>
						<c:when test="${currentPage eq i}">
							<a class="active"> ${i} </a>
						</c:when>
						<c:otherwise>
							<a
								href="${pageContext.request.contextPath}/admin/doanhThuTheoThang/chiTiet/${maTuyenBay}?page=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:if test="${currentPage lt totalPages}">
					<a
						href="${pageContext.request.contextPath}/admin/doanhThuTheoThang/chiTiet/${maTuyenBay}?page=${currentPage+1}">Next</a>
				</c:if>
			</div>
		</section>
	</section>

	<!--main content end-->
</body>
</html>