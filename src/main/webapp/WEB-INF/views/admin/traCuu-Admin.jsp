<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tra cứu</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->
	<section id="main-content"
		style="background-image: url('https://mdbootstrap.com/img/new/fluid/city/018.jpg');height: 100vh; background-size: cover;">
		<section class="wrapper">
			<div class="row" style="display: flex; justify-content: center;">
				<div class="col-lg-8"
					style="background-color: #fff; margin-top: 155px;">
					<h3>TRA CỨU CHUYẾN BAY</h3>
					<br />
					<form:form action="${pageContext.request.contextPath }/admin/chuyen-bay/tim-chuyen-bay" method="post" modelAttribute="timChuyenBay">
						<div class="row">
							<div class="form-group col-md-6">
								<div class="form-group">
									<form:label path="tuyenBay.sanBayDi.maSanBay">Điểm đi</form:label>
									<form:select class="form-control"
										path="tuyenBay.sanBayDi.maSanBay" items="${listSanBay}"
										itemValue="maSanBay" itemLabel="diaDiem" />
									<form:errors path="${timChuyenBay.tuyenBay.sanBayDi.maSanBay}" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="form-group">
									<form:label path="tuyenBay.sanBayDen.maSanBay">Điểm đến</form:label>
									<form:select class="form-control"
										path="tuyenBay.sanBayDen.maSanBay" items="${listSanBay}"
										itemValue="maSanBay" itemLabel="diaDiem" />
									<form:errors path="${timChuyenBay.tuyenBay.sanBayDen.maSanBay}" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<div class="form-group">
									<label for="">Ngày đi</label>
									<form:input type="date" class="form-control"
										path="ngayKhoiHanh" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="form-group">
									<form:label path="">Loại vé</form:label>
									<form:select class="form-control" name="loaive" path=""
										items="${loaiVe}" itemValue="maLoaiVe" itemLabel="tenLoaiVe" />

								</div>
							</div>
						</div>
						<div class="form-group row" style="float: right">
							<div class="col-sm-12">

								<button type="submit" class="btn btn-warning">Tìm kiếm
								</button>

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