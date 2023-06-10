<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm thông tin tuyến bay</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 125px">
					<h3>THÊM THÔNG TIN TUYẾN BAY</h3>
					<br />
					<form:form id="my_form"
						action="${pageContext.request.contextPath}/admin/tuyen-bay/luu-tuyen-bay"
						method="post" modelAttribute="tuyenbay">
						<table class="table">
							<tr>
								<td class="col-3"><form:label path="maTuyenBay">Mã Tuyến Bay<span
											class="rq">*</span> :</form:label></td>
								<td class="col-6"><form:input class="form-control"
										path="maTuyenBay" /></td>
								<td class="col-3"><form:errors path="maTuyenBay"
										cssClass="errors" />${maTuyenBayError}</td>
							</tr>
							<tr>
								<td><form:label path="sanBayDi.maSanBay">Mã Sân Bay Đi</form:label></td>
								<td><form:select path="sanBayDi.maSanBay"
										items="${sanbays}" itemValue="maSanBay" itemLabel="maSanBay" />
								</td>
								<td><form:errors path="sanBayDi.maSanBay" /></td>
							</tr>
							<tr>
								<td><form:label path="sanBayDen.maSanBay">Mã Sân Bay Đến</form:label></td>
								<td><form:select path="sanBayDen.maSanBay"
										items="${sanbays}" itemValue="maSanBay" itemLabel="maSanBay" /></td>
								<td><form:errors path="sanBayDen.maSanBay" /> ${msg}</td>
							</tr>


							<tr>
								<td></td>
								<td><form:button class="btn btn-info" type="submit">Tạo Mới</form:button></td>
							</tr>
						</table>
					</form:form>
				</div>
			</div>
		</section>
	</section>
	<!--main content end-->
</body>
</html>