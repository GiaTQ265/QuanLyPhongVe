<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doanh thu theo năm</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

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
									<td>${ngayBatDau}</td>
									<td>${ngayHienTai}</td>
									<td><fmt:formatNumber pattern="#,###.## VND"
											type="currency" currencySymbol="VND" maxFractionDigits="3"
											value="${doanhThuNamHienTai}" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

			</div>
			<!-- row -->
			<div class="row mt">
				<!--CUSTOM CHART START -->
				<div class="border-head">
					<h3>Biểu đồ doanh thu năm hiện tại theo tháng (Đơn vị tính:
						Triệu VND)</h3>
				</div>
				<div class="custom-bar-chart">
					<ul class="y-axis">
						<li><span>1000</span></li>
						<li><span>800</span></li>
						<li><span>600</span></li>
						<li><span>400</span></li>
						<li><span>200</span></li>
						<li><span>0</span></li>
					</ul>
					<c:forEach var="abc" items="${doanhThuTungThangCuaNams}"
						varStatus="status">
						<div class="bar">
							<div class="title">
								<c:if test="${abc[2] > 0}">
									<a
										href="${pageContext.request.contextPath}/admin/doanhThuTheoNam/doanhThuTheoThang/${abc[0]}">${abc[0]}</a>
								</c:if>
								<c:if test="${abc[2] == 0}">${abc[0]}</c:if>
							</div>
							<div class="value tooltips" data-original-title="${abc[2]}"
								data-toggle="tooltip" data-placement="top">${abc[1]}</div>
						</div>
					</c:forEach>
				</div>
				<!--custom chart end-->
			</div>
			<!-- /row -->
		</section>
	</section>
	<!--main content end-->
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="/QuanLyPhongVe/assets/js/jquery.js"></script>
	<script src="/QuanLyPhongVe/assets/js/jquery-1.8.3.min.js"></script>
	<script src="/QuanLyPhongVe/assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="/QuanLyPhongVe/assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="/QuanLyPhongVe/assets/js/jquery.scrollTo.min.js"></script>
	<script src="/QuanLyPhongVe/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="/QuanLyPhongVe/assets/js/jquery.sparkline.js"></script>


	<!--common script for all pages-->
	<script src="/QuanLyPhongVe/assets/js/common-scripts.js"></script>

</body>
</html>