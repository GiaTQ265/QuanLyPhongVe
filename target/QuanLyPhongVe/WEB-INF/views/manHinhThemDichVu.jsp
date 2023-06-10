<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm dịch vụ</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>THÊM MỚI DỊCH VỤ</h3>
					<br />
					<form action="">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="maDichVu">Mã dịch vụ</label> <input type="text"
									class="form-control" id="maDichVu" />
							</div>
							<div class="form-group col-md-12">
								<label for="tenDichVu">Tên dịch vụ</label> <input type="text"
									class="form-control" id="tenDichVu" />
							</div>
							<div class="form-group col-md-12">
								<label for="giaDichVu">Giá dịch vụ</label> <input type="text"
									class="form-control" id="giaDichVu" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<a href="listDichvu.html">
									<button type="button" class="btn btn-warning">Thêm
										dịch vụ</button>
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