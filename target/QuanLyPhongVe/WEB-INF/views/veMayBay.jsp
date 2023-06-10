<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hiển thị vé điện tử</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="row list" style="display: flex; justify-content: center">
				<div class="col-lg-10">
					<h3>VÉ ĐIỆN TỬ VÀ XÁC NHẬN HÀNH TRÌNH</h3>

					<h4>1. Thông tin đặt chỗ</h4>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Mã số đặt vé</th>
								<th scope="col">Loại ghế (Lấy từ database)</th>
								<th scope="col">Trạng thái thanh toán(Lấy từ database)</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th rowspan="1">Mã vé (Lấy từ database)</th>
								<td scope="col">Ngày đặt</td>
								<td scope="col">Date (Lấy từ database)</td>
							</tr>
							<tr>
								<th rowspan="2"><img src="assets/img/mavach.png"
									height="100px" alt="" /></th>
								<td scope="col">Tên khách hàng</td>
								<td scope="col">Họ + Tên (Lấy từ database)</td>
							</tr>
							<tr>
								<td scope="col">Số điện thoại</td>
								<td scope="col">Số điện thoại (Lấy từ database)</td>
							</tr>
						</tbody>
					</table>

					<h4>2. Thông tin khách hàng</h4>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Tên khách hàng</th>
								<th scope="col">Số ghế</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="col">Họ + Tên (Lấy từ database)</th>
								<th scope="col">Chọn khi checkIn</th>
							</tr>
						</tbody>
					</table>
					<h4>3. Thông tin Chuyến bay</h4>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Chuyến bay</th>
								<th scope="col">Ngày đi</th>
								<th scope="col">Loại vé</th>
								<th scope="col">Địa điểm đi</th>
								<th scope="col">Địa điểm đến</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="col">Mã chuyến bay (Lấy từ database)</th>
								<th scope="col">Ngày đi (Lấy từ database)</th>
								<th scope="col">Hạng vé (Lấy từ database)</th>
								<th scope="col">Địa điểm đi (Lấy từ database)</th>
								<th scope="col">Địa điểm đến (Lấy từ database)</th>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /col-lg-9 END SECTION MIDDLE -->

				<!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->
			</div>
			<! --/row -->
		</section>
	</section>

	<!--main content end-->

</body>
</html>