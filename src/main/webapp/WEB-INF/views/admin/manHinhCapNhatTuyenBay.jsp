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
						action="${pageContext.request.contextPath}/admin/tuyen-bay/luu-cap-nhat"
						method="post" modelAttribute="TuyenBayForm" id="form1"
						class="mt-3">
						<table>
							<tr>
								<td><form:label path="maTuyenBay">Mã Sân Bay</form:label></td>
								<td><form:input path="maTuyenBay" id="maTuyenBay"
										readonly="true" class="form-control" /></td>
								<td><form:errors path="maTuyenBay" /></td>
							</tr>
							<tr>
								<td><form:label path="sanBayDi.maSanBay">Mã Sân Bay Đi</form:label></td>
								<td><form:select path="sanBayDi.maSanBay" id="maSanBayDen">
										<form:option value="NONE"> --SELECT--</form:option>
										<form:options items="${sanbays}" itemValue="maSanBay"
											itemLabel="maSanBay" />
									</form:select></td>
								<td><form:errors path="sanBayDi.maSanBay" /></td>
							</tr>
							<tr>
								<td><form:label path="sanBayDen.maSanBay">Mã Sân Bay Đến</form:label></td>
								<td><form:select path="sanBayDen.maSanBay" id="maSanBayDi">
										<form:option value="NONE"> --SELECT--</form:option>
										<form:options items="${sanbays}" itemValue="maSanBay"
											itemLabel="maSanBay" />
									</form:select></td>
								<td><form:errors path="sanBayDen.maSanBay" /></td>
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