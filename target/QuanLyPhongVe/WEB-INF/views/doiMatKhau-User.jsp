<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/users.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>ĐỔI MẬT KHẨU</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="matKhau">Nhập mật khẩu cũ</label> <input type="text"
									class="form-control" id="maDichVu" />
							</div>
							<div class="form-group col-md-12">
								<label for="maKhau">Mật khẩu mới</label> <input type="text"
									class="form-control" id="tenDichVu" />
							</div>
							<div class="form-group col-md-12">
								<label for="matKhau">Nhập lại mật khẩu mới</label> <input
									type="text" class="form-control" id="giaDichVu" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<a href="ManHinhUser.html">
									<button type="button" class="btn btn-warning">Cập nhật
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