<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hiển thị vé điện tử</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

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
								<th>Mã số đặt vé</th>
								<th>Ngày đặt</th>
								<th>Tên khách hàng</th>
								<th>Số điện thoại</th>
								<th>Trạng thái</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${ThongTinThanhToan[1].maVe}</td>
								<td>${ThongTinThanhToan[0].ngayThanhToan}</td>
								<td>${ThongTinThanhToan[7].ho}
									${ThongTinThanhToan[7].ten}</td>
								<td>${ThongTinThanhToan[7].soDienThoai}</td>
								<td>${ThongTinThanhToan[0].trangThai}</td>
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
								<td>${ThongTinThanhToan[1].khachHang.ho}
									${ThongTinThanhToan[1].khachHang.ten}</td>
								<td>_ __</td>
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
								<td>${ThongTinThanhToan[2].maChuyenBay}</td>
								<td>${ThongTinThanhToan[2].ngayKhoiHanh}</td>
								<td>${ThongTinThanhToan[1].loaiVe.tenLoaiVe}</td>
								<td>${ThongTinThanhToan[4].diaDiem}</td>
								<td>${ThongTinThanhToan[6].diaDiem}</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>

		</section>
	</section>

	<!--main content end-->

</body>
</html>