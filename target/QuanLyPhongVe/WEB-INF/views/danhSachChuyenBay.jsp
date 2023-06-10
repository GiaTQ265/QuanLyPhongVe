<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách chuyến bay</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH CHUYẾN BAY</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<!-- Search -->
						<!-- <div style="float: right; display: flex"> <label >Tìm kiếm:<input type="search" class="form-control form-control-sm" /> </label> </div> -->
						<div style="float: right">
							<form>
								<input type="text" placeholder="Tìm kiếm" name="search" />
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
							<br />
						</div>
						<section id="unseen">
							<table class="table table-hover table-sm">
								<thead>
									<tr class="thead">
										<th>Mã chuyến bay</th>
										<th>Mã tuyến bay</th>
										<th>Mã máy bay</th>
										<th>Ngày khời hành</th>
										<th>Giờ khời hành</th>
										<th>Thời gian bay dự kiến</th>
										<th>Giá chuyến bay</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>ChuyenBay001</td>
										<td>TuyenBay001</td>
										<td>MH370</td>
										<td>01-01-2024</td>
										<td>12:00</td>
										<td>01:30</td>
										<td>9876543 VND</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemChuyenBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
									<tr>
										<td>ChuyenBay001</td>
										<td>TuyenBay001</td>
										<td>MH370</td>
										<td>01-01-2024</td>
										<td>12:00</td>
										<td>01:30</td>
										<td>9876543 VND</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemChuyenBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
									<tr>
										<td>ChuyenBay001</td>
										<td>TuyenBay001</td>
										<td>MH370</td>
										<td>01-01-2024</td>
										<td>12:00</td>
										<td>01:30</td>
										<td>9876543 VND</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemChuyenBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
									<tr>
										<td>ChuyenBay001</td>
										<td>TuyenBay001</td>
										<td>MH370</td>
										<td>01-01-2024</td>
										<td>12:00</td>
										<td>01:30</td>
										<td>9876543 VND</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemChuyenBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
									<tr>
										<td>ChuyenBay001</td>
										<td>TuyenBay001</td>
										<td>MH370</td>
										<td>01-01-2024</td>
										<td>12:00</td>
										<td>01:30</td>
										<td>9876543 VND</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemChuyenBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- Phân trang -->
							<ul class="pagination" style="float: right">
								<li class="page-item"><a class="page-link" href="#">Previous</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</section>
					</div>
					<!-- /content-panel -->
				</div>
				<!-- /col-lg-4 -->
			</div>
			<!-- /row -->
		</section>
	</section>
	<!--main content end-->
</body>
</html>