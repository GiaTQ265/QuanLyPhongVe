<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết vé</title>
</head>

<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>
	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-md-12">
					<div class="row mt">
						<div class="col-lg-1"></div>
						<div class="col-lg-10">
							<!-- from xuat thong tin -->
							<form action="">
								<h3>Chi Tiết Vé</h3>
								<div class="row">
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Mã vé:</label>
										</div>
										<div class="col-lg-6 ">
											<input type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Tên Khách Hàng:</label>
										</div>
										<div class="col-lg-6 ">
											<input type="text" class="form-control" readonly>
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
											<input type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Loại Vé:</label>
										</div>
										<div class="col-lg-6 ">
											<input type="text" class="form-control" readonly>
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
											<input type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Điểm Đến:</label>
										</div>
										<div class="col-lg-6 ">
											<input type="text" class="form-control" readonly>
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
											<input type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Ngày Khởi Hành:</label>
										</div>
										<div class="col-lg-6 ">
											<input type="text" class="form-control" readonly>
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
											<input type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
									<div class="col-lg-6">
										<div class="col-lg-4" style="margin-top: 10px;">
											<label for="">Giá Vé:</label>
										</div>
										<div class="col-lg-6 ">
											<input type="text" class="form-control" readonly>
										</div>
										<div class="col-lg-2 "></div>
									</div>
								</div>
								<br> <br>
								<!-- button chuc nang -->
								<div class="row">
									<div class="col-lg-4"></div>
									<div class="col-lg-4"></div>
									<div class="col-lg-4">
										<a href="themthongtinve.html"
											style="justify-content: space-between;">
											<button type="button" class="btn btn-danger">Quay
												Lại</button>
										</a> <a href="VeMayBay.html">
											<button type="button" class="btn btn-warning">Đặt
												Trước</button>
										</a> <a href="VeMayBay.html">
											<button type="button" class="btn btn-success">Thanh
												Toán</button>
										</a>
									</div>
								</div>
							</form>
							<!-- from xuat thong tin -->

						</div>
						<div class="col-lg-1"></div>
					</div>
				</div>

			</div>
		</section>
	</section>

	<!--main content end-->
</body>
</html>