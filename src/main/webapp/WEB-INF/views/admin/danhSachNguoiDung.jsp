<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách người dùng</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH KHÁCH HÀNG</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<section>
							<table class="table table-hover">
								<thead class="thead">
									<tr>
										<th>Họ tên</th>
										<th>Ngày sinh</th>
										<th>Giới tính</th>
										<th>Số điện thoại</th>
										<th>Địa chỉ</th>
										<th>Email</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="kh" items="${dsKhachHang}">
										<tr>
											<td>${kh.ho} ${kh.ten}</td>
											<td>${kh.ngaySinh}</td>
											<td>${kh.gioiTinh}</td>
											<td>${kh.soDienThoai}</td>
											<td>${kh.diaChi}</td>
											<td>${kh.email}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<ul class="pagination" style="float: right">
								<c:if test="${currentPage > 1}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/dichvu/dsnguoidung?page=${currentPage-1}">Previous</a></li>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<li class="page-item"><a class="active"> ${i} </a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a href="${pageContext.request.contextPath}/admin/dichvu/dsnguoidung?page=${i}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>



								<c:if test="${currentPage lt totalPages}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/dichvudsnguoidung?page=${currentPage+1}">Next</a></li>
								</c:if>
							</ul>
							<!-- end phan trang -->
						</section>
					</div>
					<!-- /content-panel -->
				</div>
				<!-- /col-lg-4 -->
			</div>
			<!-- /row -->
		</section>
	</section>
	<!--main content end-->
</body>
</html>