<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm tuyến bay</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>
	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>THÊM TUYẾN BAY</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="maTuyenBay">Mã tuyến bay</label> <input type="text"
									class="form-control" id="maSanBay" />
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-12">
								<label for="maSanBayDi">Mã sân bay đi</label> <select
									class="form-control" id="maSanBayDi">
									<option>Mã Sân bay đi 1</option>
									<option>Mã Sân bay đi 2</option>
									<option>Mã Sân bay đi 3</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label for="maSanBayDen">Mã sân bay đến</label> <select
									class="form-control" id="maSanBayDen">
									<option>Mã Sân bay đến 1</option>
									<option>Mã Sân bay đến 2</option>
									<option>Mã Sân bay đến 3</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<a href="ManHinhTuyenBay.html">
									<button type="button" class="btn btn-warning">Tạo mới
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