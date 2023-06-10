<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
</head>
<body>
	<%@include file="/WEB-INF/views/user/user.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>ĐỔI MẬT KHẨU</h3>
					<br />
					<form:form action="${pageContext.request.contextPath}/user/doi-mat-khau">
						<div class="row">
							<div class="form-group col-md-12">
								<label for="matKhauCu">Mật khẩu cũ</label>
								<input type="password" class="form-control" id="matKhauCu" name="matKhauCu" style="${doiMau1 }"/>
							</div>
							<div style="color: red" class="col-md-12">
								<p>${message1}</p>
							</div>

							<div class="form-group col-md-12">
								<label for="matKhauMoi">Mật khẩu mới</label>
								<form:input path="matKhau" type="password" class="form-control" id="matKhauMoi" style="${doiMau2 }"/>
							</div>
							<div style="color: red" class="col-md-12">
								<form:errors path="matKhau" />
								<p>${message2}</p>
							</div>
							
							<div class="form-group col-md-12">
								<label for="xacNhanMatKhauMoi">Xác nhận mật khẩu mới</label>
								<input type="password" class="form-control" name="xacNhanMatKhauMoi" id="xacNhanMatKhauMoi" style="${doiMau3 }"/>
							</div>
							<div style="color: red" class="col-md-12">
								<p>${message3}</p>
							</div>
							
							<div style="color: green" class="col-md-12">
								<p>${message4}</p>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
									<button type="submit" class="btn btn-warning">Cập nhật</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>	
		</section>
	</section>

	<!--main content end-->

</body>
</html>