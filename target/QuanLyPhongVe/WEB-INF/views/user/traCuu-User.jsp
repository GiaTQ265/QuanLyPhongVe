<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tra cứu</title>
</head>
<body>
	<%@include file="/WEB-INF/views/user/user.jsp"%>
	<!--main content start-->
	<section id="main-content"
		style="background-image: url('https://genk.mediacdn.vn/139269124445442048/2022/7/28/dsc02086-1658995009192977460616.jpg'); background-size: cover;">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center;">
				<div class="col-lg-8"
					style="background-color: #fff; margin-top: 125px;">
					<h3>TÌM KIẾM VÉ MÁY BAY</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-6">
								<label for="">Từ</label> <select id="diaDiem"
									class="form-control">
									<option selected>Hà Nội(HAN)</option>
									<option>Đà Nẵng(DAD)</option>
									<option>TP HCM(SGN)</option>
									<option>Đà Lạt(DL)</option>
									<option>Vinh(VII)</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label for="">Đến</label> <select id="diaDiem"
									class="form-control">
									<option selected>TP HCM(SGN)</option>
									<option>Đà Nẵng(DAD)</option>
									<option>Hà Nội(HAN)</option>
									<option>Đà Lạt(DL)</option>
									<option>Vinh(VII)</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="NgayDi">Ngày đi</label> <input type="date"
									class="form-control" id="diaDiem" />
							</div>
							<div class="form-group col-md-6">
								<label for="">Loại vé</label> <select id="diaDiem"
									class="form-control">
									<option selected>Phổ thông</option>
									<option>Thương gia</option>
								</select>
							</div>
						</div>
						<div class="form-group row" style="float: right">
							<div class="col-sm-12">
								<a href="HienThiDanhSachTimKiem.html">
									<button type="button" class="btn btn-warning">Tìm kiếm
									</button>
								</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
	</section>

	<!--main content end-->
</body>
</html>