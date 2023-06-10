<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="Dashboard" />
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />

<title>Admin</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/css/bootstrap.css"
	rel="stylesheet" />
<!--external css-->
<link
	href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/zabuto_calendar.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/js/gritter/css/jquery.gritter.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/lineicons/style.css" />

<!-- Custom styles for this template -->
<style>
<%@ include file="/resources/assets/css/style.css"%>
</style>
<link
	href="${pageContext.request.contextPath}/assets/css/style-responsive.css"
	rel="stylesheet" />

<script
	src="${pageContext.request.contextPath}/assets/js/chart-master/Chart.js"></script>
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a class="logo"><b>ECAMPUS</b></a>
			<!--logo end-->
			<security:authorize access="isAuthenticated()" >
			<div class="nav notify-row" id="top_menu">
				<ul class="nav top-menu"></ul>
				<!--  notification end -->
			</div>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<div class="top-menu">
					<ul class="nav pull-right top-menu">
					<li><a class="logout" href="<c:url value='/dangxuat'/>">Đăng xuất</a></li>
					</ul>
				</div>
			</security:authorize>
			
		</header>
		<!--header end-->

		<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<p class="centered">
						<a href="profile.html"><img
							src="${pageContext.request.contextPath}/assets/img/airplane.jpg" class="img-circle" width="60" /></a>
					</p>
					<h5 class="centered">Admin</h5>

					<li class="mt"><a class="active" href="/admin/dichvu/trangchu">
							<i class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a></li>

					<li class="sub-menu"><a> <i class="fa fa-desktop"></i> <span>Quản
								lý hệ thống</span>
					</a>
						<ul class="sub">
							<li><a href="${pageContext.request.contextPath}/admin/doimatkhau">Đổi mật khẩu</a></li>
						</ul></li>
					<li class="sub-menu"><a> <i class="fa fa-desktop"></i> <span>Quản
								lý khách hàng</span>
					</a>
						<ul class="sub">
							<li><a href="${pageContext.request.contextPath}/admin/dichvu/dsnguoidung">Hiển thị thông tin khách hàng</a></li>
						</ul></li>
					<li class="sub-menu"><a> <i class="fa fa-plane"></i> <span>Thông
								tin sân bay</span>
					</a>
						<ul class="sub">
							<li><a href="${pageContext.request.contextPath}/admin/sanbay/themsanbay">Thêm thông tin sân
									bay</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/sanbay/hienthisanbay">Hiển thị danh sách sân
									bay</a></li>
						</ul></li>
					<li class="sub-menu"><a> <i class="fa fa-plane"></i> <span>Thông
								tin máy bay</span>
					</a>
						<ul class="sub">
							<li><a href="${pageContext.request.contextPath}/admin/maybay/addmaybay">Thêm thông tin máy bay</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/maybay/danhsachmaybay">Hiển
									thị danh sách máy bay</a></li>
						</ul></li>
					<li class="sub-menu"><a> <i class="fa fa-plane"></i> <span>Thông
								tin tuyến bay</span>
					</a>
						<ul class="sub">
							<li><a href="${pageContext.request.contextPath}/admin/tuyenbay/themtuyenbay">Thêm
									thông tin tuyến bay</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/tuyenbay/hienthituyenbay">Hiển
									thị danh sách tuyến bay</a></li>
						</ul></li>
					<li class="sub-menu"><a> <i class="fa fa-plane"></i> <span>Thông
								tin chuyến bay</span>
					</a>
						<ul class="sub">
							<li><a href="ManHinhThemChuyenBay.html">Thêm
									thông tin chuyến bay</a></li>
							<li><a href="HienThiDanhSachChuyenBay.html">Hiển
									thị danh sách chuyến bay</a></li>
						</ul></li>
					<li class="sub-menu"><a href="${pageContext.request.contextPath}/admin/tracuu"> <i
							class="fa fa-search"></i> <span>Tra cứu thông tin chuyến
								bay</span>
					</a></li>
					<li class="sub-menu"><a> <i class="fa fa-book"></i> <span>Quản
								lý vé</span>
					</a>
						<ul class="sub">
							<li class="sub-menu"><a> <i class="fa fa-book"></i> <span>Quản
										lý loại vé</span>
							</a>
								<ul class="sub">
									<li><a href="${pageContext.request.contextPath}/admin/ve/manhinhthemloaive">Tạo loại vé mới</a></li>
									<li><a href="${pageContext.request.contextPath}/admin/ve/danhsachloaive">Danh sách loại vé</a></li>
								</ul></li>
							<li class="sub-menu"><a> <i class="fa fa-book"></i> <span>Quản
										lý dịch vụ</span>
							</a>
								<ul class="sub">
									<li><a href="${pageContext.request.contextPath}/admin/dichvu/themdichvu">Tạo mới dịch vụ</a></li>
									<li><a href="${pageContext.request.contextPath}/admin/dichvu/dsdichvu">Danh sách dịch vụ</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath}/admin/ve/danhsachvedatcho">Danh sách vé đặt chỗ</a>
							</li>
							<li><a href="${pageContext.request.contextPath}/admin/dichvu/dsveban">Danh sách vé bán</a></li>
						</ul></li>
					<li class="sub-menu"><a> <i class="fa fa-tasks"></i> <span>Thống
								kê</span>
					</a>
						<ul class="sub">
							<li><a href="ManHinhDoanhThuTheoThang.html">Doanh
									thu tháng hiện tại</a></li>
							<li><a href="ManHinhDoanhThuTheoNam.html">Doanh
									thu năm hiện tại</a></li>
						</ul></li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
		<!--main content start-->


		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">Java Full-Stack 2301 - FA Academy</div>
		</footer>
		<!--footer end-->
	</section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.8.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollTo.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.sparkline.js"></script>

	<!--common script for all pages-->
	<script src="${pageContext.request.contextPath}/assets/js/common-scripts.js"></script>
</body>
</html>

