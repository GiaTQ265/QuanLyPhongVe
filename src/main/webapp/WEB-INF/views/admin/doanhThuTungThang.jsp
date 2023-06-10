<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doanh thu theo tháng</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>DOANH THU THÁNG ${thang}</h3>
			<div class="row">
				<div class="col-md-12 mt">
					<div class="content-panel">
						<table class="table table-hover">
							<h4>Doanh thu tháng ${thang}</h4>
							<hr />
							<thead>
								<tr>
									<th></th>
									<th>Ngày bắt đầu</th>
									<th>Ngày kết thúc</th>
									<th>Tổng doanh Thu</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td>${ngayBatDau}</td>
									<td>${ngayKetThuc}</td>
									<td><fmt:formatNumber pattern="#,###.## VND"
											type="currency" currencySymbol="VND" maxFractionDigits="3"
											value="${doanhThuThangHienTai}" /></td>
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
							<h4>Doanh thu tháng ${thang} theo tuyến bay</h4>
							<hr />
							<div style="float: right">
								<form
									action="${pageContext.request.contextPath}/admin/doanhThuTheoNam/doanhThuTheoThang/timKiem/${thang}"
									method="get">
									<input type="text" placeholder="Tìm kiếm theo tên tuyến bay"
										name="searchKey" style="width: 180px;" />
									<button type="submit">
										<i class="fa fa-search"></i>
									</button>
								</form>
								<br />
							</div>
							<thead>
								<tr>
									<th></th>
									<th>Mã tuyến bay</th>
									<th>Sân bay đi</th>
									<th>Sân bay đến</th>
									<th>Doanh thu</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="abc" items="${doanhThuTheoTuyenBays}"
									varStatus="status">
									<tr>
										<td></td>
										<td>${abc.maTuyenBay}</td>
										<td>${abc.sanBayDi}</td>
										<td>${abc.sanBayDen}</td>
										<td><fmt:formatNumber pattern="#,###.## VND"
												type="currency" currencySymbol="VND " maxFractionDigits="3"
												value="${abc.doanhThuTheoTuyenBay}" /></td>
										<td><a
											href="${pageContext.request.contextPath}/admin/doanhThuTheoNam/doanhThuTheoThang/chiTiet/${thang}/${abc.maTuyenBay}"><button
													class="btn btn-success btn-xs">Chi tiết</button></a></td>
									</tr>
								</c:forEach>

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