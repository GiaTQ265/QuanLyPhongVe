<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doanh thu theo tháng</title>
</head>
<body>
<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>TỔNG DOANH THU HIỆN TẠI</h3>
			<div class="row">
				<div class="col-md-12 mt">
					<div class="content-panel">
						<table class="table table-hover">
							<h4>Tổng doanh thu</h4>
							<hr />
							<thead>
								<tr>
									<th></th>
									<th>Ngày bắt đầu</th>
									<th>Ngày hiện tại</th>
									<th>Tổng doanh Thu</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td>1/5/2023</td>
									<td>17/5/2023</td>
									<td>1.000.000 VND</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- /col-md-12 -->
			</div>
			<!-- row -->
			<div class="row mt">
				<div class="col-md-12">
					<div class="content-panel">
						<table class="table table-striped table-advance table-hover">
							<h4>Tổng doanh thu theo tuyến bay</h4>
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
									<th>Mã tuyến bay</th>
									<th class="hidden-phone">Tên tuyến bay</th>
									<th>Doanh thu</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="basic_table.html#">Company Ltd</a></td>
									<td class="hidden-phone">Lorem Ipsum dolor</td>
									<td>12000.00$</td>
									<td><a href="ManHinhDoanhThuTheoThangDetail.html"><button
												class="btn btn-success btn-xs">Chi tiết</button></a></td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="basic_table.html#"> Dashgum co </a></td>
									<td class="hidden-phone">Lorem Ipsum dolor</td>
									<td>17900.00$</td>
									<td><a href="ManHinhDoanhThuTheoThangDetail.html"><button
												class="btn btn-success btn-xs">Chi tiết</button></a></td>
								</tr>
								<tr>
									<td>3</td>
									<td><a href="basic_table.html#"> Another Co </a></td>
									<td class="hidden-phone">Lorem Ipsum dolor</td>
									<td>14400.00$</td>
									<td><a href="ManHinhDoanhThuTheoThangDetail.html"><button
												class="btn btn-success btn-xs">Chi tiết</button></a></td>
								</tr>
								<tr>
									<td>4</td>
									<td><a href="basic_table.html#"> Dashgum ext </a></td>
									<td class="hidden-phone">Lorem Ipsum dolor</td>
									<td>22000.50$</td>
									<td><a href="ManHinhDoanhThuTheoThangDetail.html"><button
												class="btn btn-success btn-xs">Chi tiết</button></a></td>
								</tr>
								<tr>
									<td>5</td>
									<td><a href="basic_table.html#">Total Ltd</a></td>
									<td class="hidden-phone">Lorem Ipsum dolor</td>
									<td>12120.00$</td>
									<td><a href="ManHinhDoanhThuTheoThangDetail.html"><button
												class="btn btn-success btn-xs">Chi tiết</button></a></td>
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