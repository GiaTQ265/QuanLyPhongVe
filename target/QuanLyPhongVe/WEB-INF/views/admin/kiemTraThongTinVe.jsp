<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết vé</title>
</head>

<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-md-12">
					<div class="row mt">
						<div class="col-lg-1"></div>
						<div class="col-lg-10">
							<!-- from xuat thong tin -->
							<form:form action="${pageContext.request.contextPath}/admin/datve/saveve" method="post" modelAttribute="ve">
								<h3>CHI TIẾT VÉ</h3>
								<div class="row">
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Mã vé:</label>
										</div>
										<div class="col-lg-6 ">
											<input type="text" value="${ve.maVe}" class="form-control"
												readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Tên Khách Hàng:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.khachHang.ho} ${ve.khachHang.ten}"
												type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Số Điện Thoại:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.khachHang.soDienThoai}" type="text"
												class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Loại Vé:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.loaiVe.tenLoaiVe}" type="text"
												class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Điểm Xuất Phát:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.chuyenBay.tuyenBay.sanBayDi.diaDiem}"
												type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Điểm Đến:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.chuyenBay.tuyenBay.sanBayDen.diaDiem}"
												type="text" class="form-control" readonly />
										</div>
										<div class="col-lg-2 "></div>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Giờ Khởi Hành:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.chuyenBay.gioKhoiHanh}" type="time"
												class="form-control" readonly />
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Ngày Khởi Hành:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.chuyenBay.ngayKhoiHanh}" type="date"
												class="form-control" readonly />
										</div>
										<div class="col-lg-2 "></div>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Tên Máy bay:</label>
										</div>
										<div class="col-lg-6 ">
											<input value="${ve.chuyenBay.mayBay.tenMayBay}" type="text"
												class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Giá Vé:</label>
										</div>
										<div class="col-lg-6 ">
											<input
												value="${ve.chuyenBay.giaChuyenBay*ve.loaiVe.heSoGia+ve.dichVu.giaDichVu}"
												type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
								</div>
								<br>
								<br>
								<!-- button chuc nang -->
								<div class="row">
									<div class="col-lg-4"></div>
									<div class="col-lg-4"></div>
									<div class="col-lg-4">
										<a
											href="${pageContext.request.contextPath}/admin/quaylai?loaive=${ve.loaiVe.maLoaiVe}"
											style="justify-content: space-between;">
											<button type="button" class="btn btn-danger">Quay
												Lại</button>
										</a>
										<form:button type="submit" class="btn btn-primary">Đặt Trước</form:button>

										<a href="thanhtoan">
											<button type="button" class="btn btn-success">Thanh
												Toán</button>
										</a>
									</div>
								</div>
							</form:form>
							<!-- from xuat thong tin -->

						</div>
						<div class="col-lg-1"></div>
					</div>
				</div>
				<!-- col-lg-12-->
			</div>
			<!-- /row -->

		</section>
		
	</section>

	<!--main content end-->
</body>
</html>