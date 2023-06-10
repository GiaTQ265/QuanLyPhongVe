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
					<h3>THÊM THÔNG TIN SÂN BAY</h3>
					<br />
					<form:form id="my_form"
						action="${pageContext.request.contextPath}/admin/san-bay/luu-san-bay"
						method="post" modelAttribute="sanbay">
						<table class="table">
							<tr>
								<td class="col-3"><form:label path="maSanBay">Mã Sân Bay<span
											class="rq">*</span> :</form:label></td>
								<td class="col-6"><form:input class="form-control"
										path="maSanBay" /></td>
								<td class="col-3"><form:errors path="maSanBay"
										cssClass="errors" />${maSanBayError}</td>
							</tr>
							<tr>
								<td class="col-3"><form:label path="tenSanBay">Tên Sân Bay<span
											class="rq"></span> :</form:label></td>
								<td class="col-6"><form:input class="form-control"
										path="tenSanBay" /></td>
								<td class="col-3"><form:errors path="tenSanBay"
										cssClass="errors" /></td>
							</tr>
							<tr>
								<td class="col-3"><form:label path="diaDiem">Địa Điểm<span
											class="rq"></span> :</form:label></td>
								<td class="col-6"><form:input class="form-control"
										path="diaDiem" /></td>
								<td class="col-3"><form:errors path="diaDiem"
										cssClass="errors" /></td>
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