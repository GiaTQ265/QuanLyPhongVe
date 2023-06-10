<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Đăng Ký</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- 	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" /> -->
</head>
<style>
.gradient-custom-3 {
	/* fallback for old browsers */
	background: linear-gradient(-135deg, #172a74, #0685aa);
}

.gradient-custom-4 {
	/* fallback for old browsers */
	background: #84fab0; /* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
}

.card-body {
	color: #026c84;
}

#dieuKhoan {
	display: none;
	height: 700px;
	width: 900px;
}
</style>
<body>
	<section class="vh-100 bg-image">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-5" id="form">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<form:form action="${pageContext.request.contextPath}/dang-ky"
									method="post" modelAttribute="dangKyForm" id="form1">
									<h2 class="text-uppercase text-center mb-5">Tạo tài khoản</h2>
									<div class="form-outline mb-4">
										<form:label path="soDienThoai" class="form-label" for="">Số điện thoại</form:label>
										<form:input path="soDienThoai" id="soDienThoai"
											class="form-control form-control-lg" style="${doiMau1}" />
										<div style="color: red">
											<form:errors path="soDienThoai" />
											<p>${message}</p>
										</div>
									</div>

									<div class="form-outline mb-4">
										<form:label path="matKhau" class="form-label" for="">Mật khẩu</form:label>
										<form:input path="matKhau" id="matKhau"
											class="form-control form-control-lg" type="password"
											style="${doiMau2}" />
										<div style="color: red">
											<form:errors path="matKhau" />
											<p>${error}</p>
										</div>
									</div>

									<div class="form-outline mb-4">
										<label class="form-label" for="form3Example4cdg">Xác
											nhận mật khẩu</label> <input name="xacNhanMatKhau" type="password"
											id="form3Example4cdg" class="form-control form-control-lg"
											style="${doiMau3}" />
										<p>${error3}</p>
									</div>
									<div class="form-check d-flex justify-content-center mb-5">
										<input class="form-check-input me-2" type="checkbox" value=""
											id="form2Example3cg" checked="checked" /> <label
											class="form-check-label" for="form2Example3g"> Tôi
											đồng ý với các điều khoản trong <a href="dieu-khoan	"
											class="text-body">Điều khoản dịch
												vụ</a>
										</label>

									</div>

									<div class="d-flex justify-content-center">
										<form:button value="Add"
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Đăng Ký</form:button>
									</div>

									<p class="text-center mt-5 mb-0" style="color: #026c84">
										Bạn đã có tài khoản? <a
											href="${pageContext.request.contextPath}/dang-nhap"
											class="fw-bold text-body">Đăng nhập tại đây!!</a>
									</p>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>