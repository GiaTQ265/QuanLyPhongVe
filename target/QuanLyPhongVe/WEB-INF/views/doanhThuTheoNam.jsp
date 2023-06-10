<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doanh thu theo năm</title>
</head>
<body>
<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>TỔNG DOANH THU NĂM HIỆN TẠI</h3>
			<div class="row">
				<div class="col-md-12">
					<div class="content-panel">
						<table class="table table-hover">
							<h4>Tổng doanh thu</h4>
							<hr>
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
									<td>1/1/2023</td>
									<td>17/5/2023</td>
									<td>1.000.000 VND</td>
								</tr>
							</tbody>
						</table>
					</div>
					<! --/content-panel -->
				</div>
				<!-- /col-md-12 -->
			</div>
			<!-- row -->
			<div class="row mt">
				<!--CUSTOM CHART START -->
				<div class="border-head">
					<h3>Biểu đồ doanh thu năm hiện tại theo tháng</h3>
				</div>
				<div class="custom-bar-chart">
					<ul class="y-axis">
						<li><span>10.000</span></li>
						<li><span>8.000</span></li>
						<li><span>6.000</span></li>
						<li><span>4.000</span></li>
						<li><span>2.000</span></li>
						<li><span>0</span></li>
					</ul>
					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">JAN</a>
						</div>
						<div class="value tooltips" data-original-title="8.500"
							data-toggle="tooltip" data-placement="top">85%</div>
					</div>
					<div class="bar ">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">FEB</a>
						</div>
						<div class="value tooltips" data-original-title="5.000"
							data-toggle="tooltip" data-placement="top">50%</div>
					</div>
					<div class="bar ">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">MAR</a>
						</div>
						<div class="value tooltips" data-original-title="6.000"
							data-toggle="tooltip" data-placement="top">60%</div>
					</div>
					<div class="bar ">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">APR</a>
						</div>
						<div class="value tooltips" data-original-title="4.500"
							data-toggle="tooltip" data-placement="top">45%</div>
					</div>
					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">MAY</a>
						</div>
						<div class="value tooltips" data-original-title="3.200"
							data-toggle="tooltip" data-placement="top">32%</div>
					</div>
					<div class="bar ">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">JUN</a>
						</div>
						<div class="value tooltips" data-original-title="6.200"
							data-toggle="tooltip" data-placement="top">62%</div>
					</div>
					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">JUL</a>
						</div>
						<div class="value tooltips" data-original-title="7.500"
							data-toggle="tooltip" data-placement="top">75%</div>
					</div>
					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">AUG</a>
						</div>
						<div class="value tooltips" data-original-title="7.500"
							data-toggle="tooltip" data-placement="top">75%</div>
					</div>
					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">SEP</a>
						</div>
						<div class="value tooltips" data-original-title="7.500"
							data-toggle="tooltip" data-placement="top">75%</div>
					</div>
					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">OCT</a>
						</div>
						<div class="value tooltips" data-original-title="7.500"
							data-toggle="tooltip" data-placement="top">75%</div>
					</div>
					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">NOV</a>
						</div>
						<div class="value tooltips" data-original-title="7.500"
							data-toggle="tooltip" data-placement="top">75%</div>
					</div>

					<div class="bar">
						<div class="title">
							<a href="ManHinhDoanhThuTheoThang.html">DEC</a>
						</div>
						<div class="value tooltips" data-original-title="7.500"
							data-toggle="tooltip" data-placement="top">75%</div>
					</div>
				</div>
				<!--custom chart end-->
			</div>
			<!-- /row -->
		</section>
	</section>
	<!--main content end-->
</body>
</html>