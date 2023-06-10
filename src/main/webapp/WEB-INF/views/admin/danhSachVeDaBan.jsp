<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách vé đã thanh toán</title>
<style>
#checkid {
	color: red;
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>


	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>DANH SÁCH VÉ ĐÃ THANH TOÁN</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<div style="float: right">
							<form method="get"
								action="${pageContext.request.contextPath}/admin/ve/tim-kiem-ve-ban">
								<input type="text" placeholder="Tìm kiếm" name="search" />
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
							<br />
						</div>

						<section id="unseen">
							<table class="table table-hover table-sm">
								<thead class="thead">
									<tr>
										<th>Mã vé</th>
										<th>Mã chuyến bay</th>
										<th>Số điện thoại</th>
										<th>Mã dịch vụ</th>
										<th>Mã loại vé</th>
										<th>Giờ thanh toán</th>
										<th>Ngày thanh toán</th>
										<th>trạng thái</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${dsVeDaBan}">
										<tr>
											<td>${c.thongTinVe.maVe}</td>
											<td>${c.thongTinVe.chuyenBay.maChuyenBay}</td>
											<td>${c.thongTinVe.khachHang.soDienThoai}</td>
											<td>${c.thongTinVe.dichVu.maDichVu}</td>
											<td>${c.thongTinVe.loaiVe.maLoaiVe}</td>
											<td>${c.thongTinVe.thongTinThanhToan.gioThanhToan}</td>
											<td>${c.thongTinVe.thongTinThanhToan.ngayThanhToan}</td>
											<td>${c.thongTinVe.thongTinThanhToan.trangThai}</td>
											<td style="display: flex; justify-content: space-around">
												<a
												href="${pageContext.request.contextPath}/admin/ve/xoa-thanh-toan?maTTThanhToan=${c.maTTThanhToan}"><button
														type="submit" class="btn btn-danger">xóa</button></a> <a
												href="${pageContext.request.contextPath}/admin/ve/sua-thanh-toan?maTTThanhToan=${c.maTTThanhToan}"><button
														type="submit" class="btn btn-info">Chỉnh sửa</button></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
							<div id="checkid">${msg}</div>
							<!--Phan trang-->
							<ul class="pagination" style="float: right">
								<c:if test="${currentPage > 1}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/ve/ds-ve-ban?page=${currentPage-1}">Previous</a></li>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<li class="page-item"><a class="active"> ${i} </a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a href="${pageContext.request.contextPath}/admin/ve/ds-ve-ban?page=${i}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>



								<c:if test="${currentPage lt totalPages}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/dichvu/dsveban?page=${currentPage+1}">Next</a></li>
								</c:if>
							</ul>
							<!-- end phan trang -->
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