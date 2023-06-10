<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại vé mới</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row list">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>THÊM MỚI LOẠI VÉ</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="maLoaiVe">Mã loại vé</label> <input type="text"
									class="form-control" id="maSanBay" />
							</div>
							<div class="form-group col-md-12">
								<label for="tenLoaiVe">Tên loại vé</label> <input type="text"
									class="form-control" id="tenLoaiVe" />
							</div>
							<div class="form-group col-md-12">
								<label for="heSoGia">Hệ số giá</label> <input type="text"
									class="form-control" id="heSoGia" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<a href="listLoaiVe.html">
									<button type="button" class="btn btn-warning">Tạo mới
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