<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm chuyến bay</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row list">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 0px">
					<h3>THÊM CHUYẾN BAY</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="maChuyenBay">Mã chuyến bay</label> <input
									type="text" class="form-control" id="maSanBay" />
							</div>
							<div class="form-group col-md-12">
								<label for="maTuyeBay">Mã tuyến bay</label> <select
									class="form-control" id="maTuyenBay">
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<div class="form-group col-md-12">
								<label for="maTuyeBay">Mã máy bay</label> <select
									class="form-control" id="maMayBay">
									<option>mb1</option>
									<option>mb2</option>
								</select>
							</div>
							<div class="form-group col-md-12">
								<label for="ngayKhoiHanh">Ngày khởi hành</label> <input
									type="date" class="form-control" id="ngayKhoiHanh" />
							</div>
							<div class="form-group col-md-12">
								<label for="gioKhoiHanh">Giờ khởi hành</label> <input
									type="time" class="form-control" id="gioKhoiHanh" />
							</div>
							<div class="form-group col-md-12">
								<label for="thoiGianDuKien">Thời gian bay dự kiến</label> <input
									type="time" class="form-control" id="thoiGianDuKien" />
							</div>
							<div class="form-group col-md-12">
								<label for="giaChuyenBay">Giá chuyến bay</label> <input
									type="text" class="form-control" id="giaChuyenBay" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<a href="HienThiDanhSachChuyenBay.html">
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