<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doanh thu theo tháng hiện tại</title>
</head>
<body>
<%@include file="/WEB-INF/jsp/admin.jsp"%>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>TỔNG DOANH THU THÁNG HIỆN TẠI</h3>
			<div class="row mt">
				<div class="col-md-12">
					<div class="content-panel">
						<table class="table table-striped table-advance table-hover">
							<h4>Tổng doanh thu theo chuyến bay</h4>
							<hr />
							<div style="float: right">
								<form>
									<input type="text" placeholder="Tìm kiếm" name="search" />
									<button type="submit">
										<i class="fa fa-search"></i>
									</button>
								</form>
								<br />
							</div>
							<thead>
								<tr>
									<th>#</th>
									<th class="align-top">Mã tuyến bay</th>
									<th class="align-top">Tên tuyến bay</th>
									<th class="align-top">Mã chuyến bay</th>
									<th class="hidden-phone" class="align-top">Tên chuyến bay
									</th>
									<th class="align-top">Ngày bay</th>
									<th class="align-top">Doanh thu vé thương gia</th>
									<th class="align-top">Doanh thu vé phổ thông</th>
									<th class="align-top">Doanh thu từ dịch vụ thêm</th>
									<th class="align-top">Tổng doanh thu</th>
									<th class="align-top"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Tuyen001</td>
									<td>Đà Nẵng bay Sài Gòn</td>
									<td>DNSG001</td>
									<td>Đà Nẵng bay Sài Gòn buổi sáng</td>
									<td>14/5/2023</td>
									<td>50.000.000</td>
									<td>950.000.000</td>
									<td>50.000.000</td>
									<td>1.050.000.000</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Tuyen001</td>
									<td>Đà Nẵng bay Sài Gòn</td>
									<td>DNSG001</td>
									<td>Đà Nẵng bay Sài Gòn buổi sáng</td>
									<td>14/5/2023</td>
									<td>50.000.000</td>
									<td>950.000.000</td>
									<td>50.000.000</td>
									<td>1.050.000.000</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Tuyen001</td>
									<td>Đà Nẵng bay Sài Gòn</td>
									<td>DNSG001</td>
									<td>Đà Nẵng bay Sài Gòn buổi sáng</td>
									<td>14/5/2023</td>
									<td>50.000.000</td>
									<td>950.000.000</td>
									<td>50.000.000</td>
									<td>1.050.000.000</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Tuyen001</td>
									<td>Đà Nẵng bay Sài Gòn</td>
									<td>DNSG001</td>
									<td>Đà Nẵng bay Sài Gòn buổi sáng</td>
									<td>14/5/2023</td>
									<td>50.000.000</td>
									<td>950.000.000</td>
									<td>50.000.000</td>
									<td>1.050.000.000</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- /content-panel -->
				</div>
				<!-- /col-md-12 -->
			</div>
			<!-- /row -->
		</section>
	</section>

	<!--main content end-->
</body>
</html>