<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm thông tin sân bay</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h2 class="section-heading text-uppercase fw-bold">Chỉnh sửa
						dịch vụ</h2>
					<form:form
						action="${pageContext.request.contextPath}/admin/sanbay/luucapnhat"
						method="post" modelAttribute="SanBayForm" id="form1" class="mt-3">
						<table>
							<tr>
								<td><form:label path="maSanBay">Mã Sân Bay</form:label></td>
								<td><form:input path="maSanBay" id="maSanBay"
										readonly="true" class="form-control" /></td>
								<td><form:errors path="maSanBay" /></td>
							</tr>
							<tr>
								<td><form:label path="tenSanBay">Tên Sân Bay</form:label></td>
								<td><form:input path="tenSanBay" readonly="false"
										class="form-control" /></td>
								<td><small><form:errors path="tenSanBay" /></small></td>
							</tr>
							<tr>
								<td><form:label path="diaDiem">Địa Điểm</form:label></td>
								<td><form:input path="diaDiem" type="text" readonly="false"
										class="form-control" /></td>
								<td><small><form:errors path="diaDiem" /></small></td>
							</tr>


							<tr>
								<td></td>
								<td><form:button value="them"
										class="btn btn-warning d-flex justify-content-center mt-3">Cập nhật</form:button></td>
							</tr>


						</table>
						<p style="color: red">${message1}</p>
						<p id=messageMaDV style="color: red"></p>
						<p id="messageDonGia" style="color: red"></p>
					</form:form>
				</div>
			</div>
		</section>
	</section>
	<!--main content end-->
</body>
</html>