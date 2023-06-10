<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin khách hàng</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-6 mt">
					<h3>THÔNG TIN KHÁCH HÀNG</h3>
					<br />
					<form:form action="${pageContext.request.contextPath}/admin/datve/checkve"
						class="form-horizontal style-form" method="post"
						modelAttribute="ve">
						<div class="row">
							<div class="form-group col-md-6">
								<div class="form-group">
									<label>Mã Chuyến Bay</label>
									<div class="col-sm-10">
										<input value="${ve.chuyenBay.maChuyenBay}"
											class="form-control" readonly="true" />
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="form-group">
									<label>Số Điện Thoại</label>
									<div class="col-sm-10">
										<form:input path="khachHang.soDienThoai" class="form-control" />
										<form:errors class="text-danger" path="khachHang.soDienThoai" />
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<div class="form-group">
									<label>Ho Khách Hàng</label>
									<div class="col-sm-10">
										<form:input path="khachHang.ho" type="text"
											class="form-control" />
										<form:errors class="text-danger" path="khachHang.ho" />
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="form-group">
									<label>Tên Khách Hàng</label>
									<div class="col-sm-10">
										<form:input path="khachHang.ten" type="text"
											class="form-control" />
										<form:errors class="text-danger" path="khachHang.ten" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label for="diaChi">Địa chỉ</label>
								<form:input path="khachHang.diaChi" type="text"
									class="form-control" />
								<form:errors path="khachHang.diaChi" />
							</div>
							<div class="form-group col-md-12">
								<label for="tenDichVu">Giới tính</label> <select
									class="form-control" name="khachHang.gioiTinh">
									<option value="nam" selected>Nam</option>
									<option value="nu">Nữ</option>
								</select>
							</div>
							<div class="form-group col-md-12">
								<label>Dịch vụ </label>
								<form:select class="form-control" path="dichVu.maDichVu"
									items="${dvs}" itemValue="maDichVu" itemLabel="tenDichVu" />
							</div>
						</div>
						<div class="col-md-12" style="text-align: center">


							<button type="submit" class="btn btn-warning">Xác nhận</button>
						</div>
					</form:form>
				</div>
			</div>
		</section>
	</section>

	<!--main content end-->
</body>
</html>