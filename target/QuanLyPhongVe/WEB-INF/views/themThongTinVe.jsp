<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin khách hàng</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>


	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-6 mt">
					<h3>THÔNG TIN KHÁCH HÀNG</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-6">
								<label for="maDichVu">Mã chuyến bay</label> <input type="text"
									class="form-control" id="maDichVu" />
							</div>
							<div class="form-group col-md-6">
								<label for="tenDichVu">Số điện thoại</label> <input type="text"
									class="form-control" id="tenDichVu" />
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<label for="tenDichVu">Họ</label> <input type="text"
									class="form-control" id="tenDichVu" />
							</div>
							<div class="form-group col-md-6">
								<label for="tenDichVu">Tên khách hàng</label> <input type="text"
									class="form-control" id="tenDichVu" />
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label for="diaChi">Địa chỉ</label> <input type="text"
									class="form-control" id="tenDichVu" />
							</div>
							<div class="form-group col-md-12">
								<label for="tenDichVu">Giới tính</label> <select
									class="form-control" id="maSanBayDi">
									<option selected>Nam</option>
									<option>Nữ</option>
								</select>
							</div>
							<div class="form-group col-md-12">
								<label for="dichVu">Dịch vụ</label> <select class="form-control"
									id="maSanBayDi">
									<option selected>20 kg</option>
									<option>30 kg</option>
									<option>40 kg</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<a href="checkthongtin.html">
									<button type="button" class="btn btn-warning">Xác nhận
									</button>
								</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
	</section>

	<!--main content end-->
</body>
</html>