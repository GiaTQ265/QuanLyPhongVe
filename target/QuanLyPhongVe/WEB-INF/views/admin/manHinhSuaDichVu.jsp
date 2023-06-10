<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm dịch vụ</title>
<style>
small {
	color: red;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>CHỈNH SỬA DỊCH VỤ</h3>
					<br />
					<form:form
						action="${pageContext.request.contextPath}/admin/dichvu/suadichvu"
						method="post" modelAttribute="sua-dichvuForm">
						<div class="row">
							<div class="form-group col-md-12">
								<form:label path="maDichVu">Mã dịch vụ</form:label>
								<form:input path="maDichVu" readonly="true" class="form-control"
									id="maDichVu" value="${maDichVu}" placeholder="${maDichVu}" />
								<small><form:errors path="maDichVu"></form:errors></small>
							</div>
							<div class="form-group col-md-12">
								<label for="tenDichVu">Tên dịch vụ</label>
								<form:input path="tenDichVu" class="form-control" id="tenDichVu" />
								<small><form:errors path="tenDichVu"></form:errors></small>
							</div>
							<div class="form-group col-md-12">
								<label for="giaDichVu">Giá dịch vụ</label>
								<form:input path="giaDichVu" type="number" class="form-control"
									id="giaDichVu" />
								<small><form:errors path="giaDichVu"></form:errors></small>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<button type="submit" class="btn btn-warning">Chỉnh sửa</button>
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