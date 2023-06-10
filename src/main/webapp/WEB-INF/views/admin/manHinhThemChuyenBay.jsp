<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm chuyến bay</title>
<script src="/QuanLyPhongVe/assets/js/jquery-3.6.4.min.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->

	<section id="main-content">
		<section class="wrapper">
			<div class="row list">
				<div class="col-lg-4"
					style="background-color: rgb(255, 255, 255); margin-top: 0px">
					<h3>THÊM CHUYẾN BAY</h3>
					<br />
					<form:form
						action="${pageContext.request.contextPath}/admin/chuyen-bay/luu"
						method="post" modelAttribute="chuyenBayForm" id="form1">
						<div class="row">
							<div class="form-group col-md-12">
								<form:label path="maChuyenBay" class="form-label" for="">Mã chuyến bay</form:label>
								<form:input path="maChuyenBay" id="maChuyenBay"
									class="form-control form-control-lg" required="true" />
								<form:errors path="maChuyenBay" />
								<p style="color: red">${messageMaChuyenBay}</p>
								<p id="messageMaChuyenBay" style="color: red"></p>
							</div>
							<div class="form-group col-md-12">
								<form:label path="tuyenBay.maTuyenBay" class="form-label" for="">Mã tuyến bay</form:label>
								<form:select path="tuyenBay.maTuyenBay" items="${tuyenBays}"
									itemValue="maTuyenBay" itemLabel="maTuyenBay"
									class="form-control form-control-lg" required="true" />
								<form:errors path="tuyenBay.maTuyenBay" />
								<p style="color: red">${messageMaTuyenBay}</p>
								<p id="messageMaTuyenBay" style="color: red"></p>
							</div>
							<div class="form-group col-md-12">
								<form:label path="mayBay.maMayBay" class="form-label" for="">Mã máy bay</form:label>
								<form:select path="mayBay.maMayBay" items="${mayBays}"
									itemValue="maMayBay" itemLabel="maMayBay"
									class="form-control form-control-lg" required="true" />
								<form:errors path="mayBay.maMayBay" />
								<p style="color: red">${messageMaMayBay}</p>
								<p id="messageMaMayBay" style="color: red"></p>
							</div>
							<div class="form-group col-md-12">
								<form:label path="ngayKhoiHanh" class="form-label" for="">Ngày khởi hành</form:label>
								<form:input path="ngayKhoiHanh" id="ngayKhoiHanh" type="date"
									class="form-control form-control-lg" required="true" />
								<form:errors path="ngayKhoiHanh" />
								<p style="color: red">${messageNgayKhoiHanh}</p>
								<p id="messageNgayKhoiHanh" style="color: red"></p>
							</div>
							<div class="form-group col-md-12">
								<form:label path="gioKhoiHanh" class="form-label" for="">Giờ khởi hành</form:label>
								<form:input path="gioKhoiHanh" id="gioKhoiHanh" type="time"
									class="form-control form-control-lg" required="true" />
								<form:errors path="gioKhoiHanh" />
								<p style="color: red">${messageGioKhoiHanh}</p>
								<p id="messageGioKhoiHanh" style="color: red"></p>
							</div>
							<div class="form-group col-md-12">
								<form:label path="thoiGianBayDuKien" class="form-label" for="">Thời gian bay dự kiến</form:label>
								<form:input path="thoiGianBayDuKien" id="thoiGianBayDuKien"
									class="form-control form-control-lg" type="number" required="true" />
								<form:errors path="thoiGianBayDuKien" />
								<p style="color: red">${messageThoiGianBayDuKien}</p>
								<p id="messageThoiGianBayDuKien" style="color: red"></p>
							</div>

							<div class="form-group col-md-12">
								<form:label path="giaChuyenBay" class="form-label" for="">Giá chuyến bay</form:label>
								<form:input path="giaChuyenBay" id="giaChuyenBay"
									class="form-control form-control-lg" type="number" required="true" />
								<form:errors path="giaChuyenBay" />
								<p style="color: red">${messageGiaChuyenBay}</p>
								<p id="messageGiaChuyenBay" style="color: red"></p>
							</div>
						</div>
						<p style="color: red">${messageChuyenBay}</p>
						<div class="form-group row">
							<div class="col-md-12" style="text-align: center">
								<button type="submit" class="btn btn-warning">Tạo mới</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</section>
	</section>
	<!--main content end-->
	<script>
		$("#maChuyenBay").change(check1);
		function check1() {
			var maChuyenBay = $("#maChuyenBay").val();
			console.log(maChuyenBay);
			var format = "^CB[0-9]{5}$";
			if (maChuyenBay.match(format)) {
				$("#messageMaChuyenBay").hide();
				console.log("1");
				return 1;
			} else {
				$("#messageMaChuyenBay").show();
				console.log("0");
				var txt1 = "<smaller>Mã chuyến bay phải là dạng CBxxxxx (x là số từ 0 đến 9)<smaller>";
				$("#messageMaChuyenBay").html(txt1);
				return 0;
			}
		}

		$("#thoiGianBayDuKien").change(check2);
		function check2() {
			var value = $("#thoiGianBayDuKien").val();
			var format = "^[1-9][0-9]{0,}$";
			if (value.match(format)) {
				$("#messageThoiGianBayDuKien").hide();
				return 1;
			} else {
				$("#messageThoiGianBayDuKien").show();
				$("#messageThoiGianBayDuKien")
						.html(
								"<smaller>Thời gian bay dự kiến phải là số nguyên dương<smaller>");
				return 0;
			}

		}

		$("#giaChuyenBay").change(check3);
		function check3() {
			var value = $("#giaChuyenBay").val();
			var format = "^[1-9][0-9]{0,}$";
			if (value.match(format)) {
				$("#messageGiaChuyenBay").hide();
				return 1;
			} else {
				$("#messageGiaChuyenBay").show();
				$("#messageGiaChuyenBay")
						.html(
								"<smaller>Giá chuyến bay phải là số nguyên dương<smaller>");
				return 0;
			}

		}
		/*	function check3() {
		var value = $("#ngaySinh").val();
		var format = "^$";
		if (bienSo.match(format)) {
			$("#messageNgaySinh").hide();
			return 1;
		} else {
			$("#messageNgaySinh").show();
			$("#messageNgaySinh").html(
					"<smaller>Vui long nhap Ngay Sinh<smaller>");
			return 0;
		}
		}
		function check4() {
		var value = $("#diaChi").val();
		var format = "^$";
		if (bienSo.match(format)) {
			$("#messageDiaChi").hide();
			return 1;
		} else {
			$("#messageDiaChi").show();
			$("#messageDiaChi").html(
					"<smaller>Vui long nhap Dia Chi<smaller>");
			return 0;
		}
		}
		function check5() {
		var value = $("#maTinhThanh").val();
		var format = "^$";
		if (bienSo.match(format)) {
			$("#messageMaTinhThanh").hide();
			return 1;
		} else {
			$("#messageMaTinhThanh").show();
			$("#messageMaTinhThanh").html(
					"<smaller>Vui long nhap Ma Tinh Thanh<smaller>");
			return 0;
		}
		}
		function check6() {
		var value = $("#hoTenBoMe").val();
		var format = "^$";
		if (bienSo.match(format)) {
			$("#messageHoTenBoMe").hide();
			return 1;
		} else {
			$("#messageHoTenBoMe").show();
			$("#messageHoTenBoMe").html(
					"<smaller>Vui long nhap Ho Ten Bo/Me<smaller>");
			return 0;
		}
		}
		function check7() {
		var value = $("#sdtBoMe").val();
		var format = "^$";
		if (bienSo.match(format)) {
			$("#messageSoDTBoMe").hide();
			return 1;
		} else {
			$("#messageSoDTBoMe").show();
			$("#messageSoDTBoMe").html(
					"<smaller>Vui long nhap SDT Bo/Me<smaller>");
			return 0;
		}
		}
		function check8() {
		var value = $("#maLopHocDK").val();
		var format = "^NONE$";
		if (bienSo.match(format)) {
			$("#messageMaLHDK").hide();
			return 1;
		} else {
			$("#messageMaLHDK").show();
			$("#messageMaLHDK").html(
					"<smaller>Vui long nhap ma lop hoc dang ky<smaller>");
			return 0;
		}
		}

		$("#form1").submit(
			function(e) {
				var val1 = check1();
				var val2 = check2();
				var val3 = check3();
				var val4 = check4();
				var val5 = check5();
				var val6 = check6();
				var val7 = check7();
				var val8 = check8();

				if ((val1 == 1) && (val2 == 1) && (val3 == 1)
						&& (val4 == 1) && (val5 == 1) && (val6 == 1)
						&& (val7 == 1) && (val8 == 1)) {
					return true;
				} else {
					return false;
				}
			}) */
	</script>
</body>
</html>