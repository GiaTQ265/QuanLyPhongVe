<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin cá nhân</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/users.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row list">
				<div class="col-lg-4">
					<h3>Thông tin cá nhân</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="ho">Họ</label> <input type="text"
									class="form-control" id="ho" readonly=" true" />
							</div>
							<div class="form-group col-md-12">
								<label for="ten">Tên </label> <input type="text"
									class="form-control" id="ten" readonly=" true" />
							</div>
							<div class="form-group col-md-12">
								<label for="ngaySinh">Ngày sinh</label> <input type="text"
									class="form-control" id="ngaySinh" readonly=" true" />
							</div>
							<div class="form-group col-md-12">
								<label for="gioiTinh">Giới tính</label> <input type="text"
									class="form-control" id="gioiTinh" readonly=" true" />
							</div>

							<div class="form-group col-md-12">
								<label for="email">Email</label> <input type="text"
									class="form-control" id="email" readonly=" true" />
							</div>
							<div class="form-group col-md-12">
								<label for="diaChi">Địa chỉ</label> <input type="text"
									class="form-control" id="diaChi" readonly=" true" />
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