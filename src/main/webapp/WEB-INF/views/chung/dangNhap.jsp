<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"/>
<title>Đăng Nhập</title>
</head>
<style>
.gradient-custom {
	/* fallback for old browsers */ /* background: #0685aa; */
	background: linear-gradient(-135deg, #172a74, #0685aa);
}

.card {
	background-color: #fff;
	color: #026c84;
}
</style>
<body>
	<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card" style="border-radius: 1rem">
						<div class="card-body p-5 text-center">
							<div class="mb-md-5 mt-md-4 pb-5">
								<h2 class="fw-bold mb-2 text-uppercase">Đăng nhập</h2>
								<p class="text-50 mb-5 mt-4">Vui lòng nhập số điện thoại và
									mật khẩu của bạn!</p>
								<form name='f' action="${pageContext.request.contextPath}/j_spring_security_check" method="post">
								
									<div class="form-outline form-white mb-4" style="text-align: left;" >
										<label class="form-label" for="soDienThoai" >Số điện thoại</label>
											<input type="text" id="soDienThoai" name="soDienThoai"
											class="form-control form-control-lg" />
									</div>
									
									<div class="form-outline form-white mb-4" style="text-align: left;" >
										<label class="form-label" for="matKhau" >Mật khẩu</label> 
										<input type="password" id="matKhau" name="matKhau"
											class="form-control form-control-lg" />
									</div>
									
									<p class="small mb-5 pb-lg-2">
										<a class="text-50" href="#" style="color: #026c84">Quên
											mật khẩu?</a>
									</p>
									<div style="color: red">
										<p>${error}</p>
										<p>${invalidSession }</p>
									</div>
									<button class="btn btn-outline-light btn-lg px-5" type="submit"
										style="background-color: #906b1e">Đăng nhập</button>
								</form>
							</div>
							<div>
								<p class="mb-0">
									Bạn không có tài khoản? <a href="${pageContext.request.contextPath}/dang-ky"
										class="text-50 fw-bold" style="color: #026c84">Đăng ký</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
