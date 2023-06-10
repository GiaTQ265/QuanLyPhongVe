<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Xin Chào!!!</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700" />
<link rel="stylesheet" href="assets/css/style.css" />
</head>
<style>
.header-blue {
	background: linear-gradient(135deg, #172a74, #21a9af);
	background-color: #184e8e;
	padding-bottom: 3px;
	font-family: "Source Sans Pro", sans-serif;
}

@media ( min-width : 768px) {
	.header-blue {
		padding-bottom: 3px;
	}
}

.header-blue .navbar {
	background: transparent;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	color: #fff;
	border-radius: 0;
	box-shadow: none;
	border: none;
}

.header-blue .navbar .navbar-brand {
	font-weight: bold;
	color: inherit;
}

.header-blue .navbar .navbar-brand:hover {
	color: #f0f0f0;
}

.header-blue .navbar .navbar-collapse {
	border-top: 1px solid rgba(255, 255, 255, 0.3);
	margin-top: 0.5rem;
}

@media ( min-width : 768px) {
	.header-blue .navbar .navbar-collapse {
		border-color: transparent;
		margin: 0;
	}
}

@media ( min-width : 768px) {
	.navbar-expand-md .navbar-collapse {
		display: flex !important;
		flex-basis: auto;
		justify-content: flex-end;
	}
}

.header-blue .navbar .navbar-collapse span .login {
	color: #d9d9d9;
	margin-right: 0.5rem;
	text-decoration: none;
}

.header-blue .navbar .navbar-collapse span .login:hover {
	color: #fff;
}

.header-blue .navbar .navbar-toggler {
	border-color: rgba(255, 255, 255, 0.3);
}

.header-blue .navbar .navbar-toggler:hover, .header-blue .navbar-toggler:focus
	{
	background: none;
}

.header-blue .navbar .navbar-nav a.active, .header-blue .navbar .navbar-nav>.show .dropdown-item
	{
	background: none;
	box-shadow: none;
}

@media ( min-width : 768px) {
	.header-blue .navbar-nav .nav-link {
		padding-left: 0.7rem;
		padding-right: 0.7rem;
	}
}

@media ( min-width : 992px) {
	.header-blue .navbar-nav .nav-link {
		padding-left: 1.2rem;
		padding-right: 1.2rem;
	}
}

.header-blue .navbar .navbar-nav>li>.dropdown-menu {
	margin-top: -5px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	background-color: #fff;
	border-radius: 2px;
}

.header-blue .navbar .dropdown-menu .dropdown-item:focus, .header-blue .navbar .dropdown-menu .dropdown-item
	{
	line-height: 2;
	color: #37434d;
}

.header-blue .navbar .dropdown-menu .dropdown-item:focus, .header-blue .navbar .dropdown-menu .dropdown-item:hover
	{
	background: #ebeff1;
}

.header-blue .action-button, .header-blue .action-button:not(.disabled):active
	{
	border: 1px solid rgba(255, 255, 255, 0.7);
	border-radius: 40px;
	color: #ebeff1;
	box-shadow: none;
	text-shadow: none;
	padding: 0.3rem 0.8rem;
	background: transparent;
	transition: background-color 0.25s;
	outline: none;
}

.header-blue .action-button:hover {
	color: #fff;
}

.header-blue .navbar .form-inline label {
	color: #d9d9d9;
}

.header-blue .navbar .form-inline .search-field {
	display: inline-block;
	width: 80%;
	background: none;
	border: none;
	border-bottom: 1px solid transparent;
	border-radius: 0;
	color: #ccc;
	box-shadow: none;
	color: inherit;
	transition: border-bottom-color 0.3s;
}

.header-blue .navbar .form-inline .search-field:focus {
	border-bottom: 1px solid #ccc;
}

.header-blue .hero {
	margin-top: 20px;
	text-align: center;
}

@media ( min-width : 768px) {
	.header-blue .hero {
		margin-top: 49px;
		text-align: left;
	}
}

.header-blue .hero h1 {
	color: #fff;
	font-size: 40px;
	margin-top: 0;
	margin-bottom: 15px;
	font-weight: 300;
	line-height: 1.4;
}

@media ( min-width : 992px) {
	.header-blue .hero h1 {
		margin-top: 190px;
		margin-bottom: 24px;
		line-height: 1.2;
	}
}

.header-blue .hero p {
	color: rgba(255, 255, 255, 0.8);
	font-size: 20px;
	margin-bottom: 30px;
	font-weight: 300;
}

.header-blue .phone-holder {
	text-align: right;
}

.header-blue div.iphone-mockup {
	position: relative;
	max-width: 500px; /* margin: 20px; */
	display: inline-block;
}

.header-blue .iphone-mockup img.device {
	width: 100%;
	height: auto;
}

.header-blue .iphone-mockup .screen {
	position: absolute;
	width: 88%;
	height: 77%;
	top: 10%;
	border-radius: 2px;
	left: 6%;
	border: 1px solid #444;
	background-color: #aaa;
	overflow: hidden;
	background: none;
	background-size: cover;
	background-position: center;
}

.header-blue .iphone-mockup .screen:before {
	content: "";
	background-color: #fff;
	position: absolute;
	width: 70%;
	height: 140%;
	top: -10%;
	right: -60%;
	transform: rotate(-19deg);
	opacity: 0.2;
} /* .hero { height: 750px; } */
@media ( min-width : 1200px) {
	.container {
		max-width: 1440px;
	}
}

.group-login {
	display: flex;
	justify-content: space-between;
	width: 100px;
}

.a {
	height: 70px;
}

.header-blue div.iphone-mockup {
	position: relative;
	max-width: 500px;
	height: 785px;
	display: inline-block;
}

#dangNhap, #dangKy {
	background-color: #906b1e;
}
</style>
<body>
	<div class="header-blue">
		<nav
			class="navbar navbar-dark navbar-expand-md navigation-clean-search">
			<div class="container a">
				<a class="navbar-brand" href="index.html">ECAMPUS</a>
				<div class="collapse navbar-collapse" id="navcol-1">
					<form class="form-inline mr-auto" target="_self"></form>
					<a class="btn btn-light action-button" id="dangNhap" role="button"
						href="${pageContext.request.contextPath}/dangnhap">Đăng nhập</a><a
						class="btn btn-light action-button" id="dangKy" role="button"
						href="${pageContext.request.contextPath}/dangky">Đăng ký</a>
				</div>
			</div>
		</nav>
		<div class="container hero">
			<div class="row"
				style="justify-content: space-between; height: 816px">
				<div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
					<h1>Giới thiệu phòng vé</h1>
					<p>
						Phòng vé gồm 7 thành viên: <br /> - Đinh Nhật Thăng <br /> -
						Phạm Ngọc Lợi <br /> - Nguyễn Huỳnh Đăng Tuấn <br /> - Trần Quốc
						Gia <br /> - Hồ Đắc Anh Hoàng <br /> - Phùng Trần Huy Cận <br />
						- Mai Hồng Minh <br /> Bán vé máy bay của hãng hàng không
						FPTAriway. Hân hạnh được phục vụ!!!
					</p>
				</div>
				<div
					class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
					<div class="iphone-mockup">
						<img
							src="https://images.unsplash.com/photo-1519666336592-e225a99dcd2f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=988&q=80"
							class="device" />
						<div class="screen"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

