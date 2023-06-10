<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách vé đang chờ thanh toán</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3 style="text-align: center; color: #1e99cd;">DANH SÁCH VÉ
				ĐANG CHỜ THANH TOÁN</h3>
			<div class="row mt list"
				style="display: flex; justify-content: center">
				<div class="col-lg-9">
					<div class="content-panel">
						<div style="float: right">
							<form action="${pageContext.request.contextPath}/admin/ve/timkiem1"
								method="get">
								<input type="text" placeholder="Tìm kiếm" name="searchKey" />
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
							<br />
						</div>

						<section>
							<table class="table table-hover ">
								<thead class="thead">
									<tr>
										<th width="10%">Mã vé</th>
										<th width="10%">Mã chuyến bay</th>
										<th width="10%">Số điện thoại</th>
										<th width="10%">Mã loại vé</th>
										<th width="10%">Mã dịch vụ</th>
										<th width="10%">Giờ thanh toán</th>
										<th width="10%">Ngày thanh toán</th>
										<th width="10%">Trạng thái</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${ThongTinThanhToan}"
										varStatus="status">
										<tr>
											<td>${c.thongTinVe.maVe}</td>
											<td>${c.thongTinVe.chuyenBay.maChuyenBay}</td>
											<td>${c.thongTinVe.khachHang.soDienThoai}</td>
											<td>${c.thongTinVe.loaiVe.maLoaiVe}</td>
											<td>${c.thongTinVe.dichVu.maDichVu}</td>
											<td>${c.gioThanhToan}</td>
											<td>${c.ngayThanhToan}</td>
											<td>${c.trangThai}</td>
											<td style="display: flex; justify-content: space-around">

												<a
												href="${pageContext.request.contextPath}/admin/ve/xoa1/${c.maTTThanhToan}"
												onclick="return confirm('Bạn có muốn hủy vé này không?')"><button
														type="button" class="btn btn-danger">Hủy</button></a> <a
												href="${pageContext.request.contextPath}/admin/ve/capnhattt/${c.maTTThanhToan}"><button
														type="button" class="btn btn-success">Thanh toán</button></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="list">

								<p style="color: red">${timKiems}</p>
								<br>
							</div>
							<!-- Phân trang -->

							<ul class="pagination" style="float: right;">
								<c:if test="${currentPage > 1}">
									<li><a href="${pageContext.request.contextPath}/admin/ve/danhSachVeDatCho?page=${currentPage-1}">Trang
											trước</a></li>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<li><a class="active"> ${i} </a></li>
										</c:when>
										<c:otherwise>
											<li><a href="${pageContext.request.contextPath}/admin/ve/danhSachVeDatCho?page=${i}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${currentPage lt totalPages}">
									<li><a href="${pageContext.request.contextPath}/admin/ve/danhSachVeDatCho?page=${currentPage+1}">Tiếp
											theo</a></li>
								</c:if>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</section>
	</section>
	<!--main content end-->
</body>
</html>