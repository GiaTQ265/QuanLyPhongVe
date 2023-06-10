<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin khách hàng</title>
<style>
small {
	color: red;
}
</style>
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
					<form:form
						action="${pageContext.request.contextPath}/admin/ve/luu-thanh-toan"
						method="post" modelAttribute="suattveban">
						<div class="row">
							<div class="form-group col-md-6">
								<form:label path="maVe">Mã Vé</form:label>
								<form:input path="maVe" readonly="true" class="form-control"
									id="maDichVu" />
							</div>
							<div class="form-group col-md-6">
								<form:label path="soDienThoai">Số điện thoại</form:label>
								<form:input path="soDienThoai" class="form-control"
									id="soDienThoai" />
								<small><form:errors path="soDienThoai"></form:errors></small>
							</div>

						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<form:label path="ho" for="tenDichVu">Họ</form:label>
								<form:input path="ho" type="text" class="form-control"
									id="tenDichVu" />
								<small><form:errors path="ho"></form:errors></small>
							</div>
							<div class="form-group col-md-6">
								<form:label path="tenKhachHang" for="tenDichVu">Tên khách hàng</form:label>
								<form:input path="tenKhachHang" type="text" class="form-control"
									id="tenDichVu" />
								<small><form:errors path="tenKhachHang"></form:errors></small>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<form:label path="diaChi" for="diaChi">Địa chỉ</form:label>
								<form:input path="diaChi" type="text" class="form-control"
									id="tenDichVu" />
							</div>
							<div class="form-group col-md-12">
								<form:label path="gioiTinh" for="tenDichVu">Giới tính</form:label>
								<select name="gioiTinh" class="form-control" id="gioiTinh">
									<option value="Nam">Nam</option>
									<option value="Nữ">Nữ</option>
								</select>
							</div>
							<div class="form-group col-md-12">
								<form:label path="gioiTinh" for="tenDichVu">Ngày sinh</form:label>
								<form:input path="ngaySinh" type="date" class="form-control"
									id="tenDichVu" />
							</div>

						</div>
						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<a>
									<button type="submit" class="btn btn-warning">Xác nhận
									</button>
								</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</section>
	</section>

	<!--main content end-->
</body>
</html>