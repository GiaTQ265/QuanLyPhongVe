<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm thông tin máy bay</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>THÊM THÔNG TIN MÁY BAY</h3>
					<br />
					<form:form action="${pageContext.request.contextPath }/admin/maybay/capnhatmaybay"
						method="post" modelAttribute="maybay">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="maMayBay">Mã máy bay</label>
								<form:input class="form-control" path="maMayBay" readonly="true" />
								<form:errors class="text-danger" path="maMayBay"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label for="tenMayBay">Tên máy bay</label>
								<form:input class="form-control" path="tenMayBay" />
								<form:errors class="text-danger" path="tenMayBay"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label for="NgayDi">Số lượng ghế</label>
								<form:input class="form-control" path="soLuongGhe" type="number" />
								<form:errors class="text-danger" path="soLuongGhe"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label for="NgayDi">Số lượng ghế thương gia</label>
								<form:input class="form-control" path="soLuongGheThuongGia"
									type="number" />
								<form:errors class="text-danger" path="soLuongGheThuongGia"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label for="NgayDi">Trạng thái</label>
								<form:select class="form-control" path="trangThai">
									<form:option value="san sang">Sẵn Sàng</form:option>
									<form:option value="bao tri">Bảo Trì</form:option>
								</form:select>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">

								<button type="submit" class="btn btn-warning">Cập nhật</button>

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