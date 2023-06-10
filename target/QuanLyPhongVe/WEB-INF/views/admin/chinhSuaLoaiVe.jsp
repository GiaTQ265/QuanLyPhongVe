<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại vé mới</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="row list">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>CHỈNH SỬA LOẠI VÉ</h3>
					<br />
					<form:form class="form"
						action="${pageContext.request.contextPath}/admin/ve/chinhsua"
						method="post" modelAttribute="LoaiVe">
						<div class="row">
							<div class="form-group col-md-12">
								<form:label path="maLoaiVe" for="maLoaiVe">Mã loại vé</form:label>
								<form:input path="maLoaiVe" type="text" class="form-control"
									id="maLoaiVe" readonly="true" />
								<small><form:errors path="maLoaiVe" /></small>
							</div>
							<div class="form-group col-md-12">
								<form:label path="tenLoaiVe" for="tenLoaiVe">Tên loại vé</form:label>
								<form:input path="tenLoaiVe" type="text" class="form-control"
									id="tenLoaiVe" />
								<small><form:errors path="tenLoaiVe" /></small>
							</div>
							<div class="form-group col-md-12">
								<form:label path="heSoGia" for="heSoGia">Hệ số giá</form:label>
								<form:input path="heSoGia" type="text" class="form-control"
									id="heSoGia" />
								<small><form:errors path="heSoGia" /></small><small>${heSoGia}</small>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<form:button value="list" type="submit" class="btn btn-warning"
									id="submit">Cập nhật</form:button>
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