<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách dịch vụ</title>
<style>
#checkid {
	color: red;
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>


	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH DỊCH VỤ</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<!-- Search -->

						<div style="float: right">
							<form method="get"
								action="${pageContext.request.contextPath}/admin/dich-vu/tim-kiem-dv">
								<input type="text" placeholder="Tìm kiếm" name="search" />
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
							<br />
						</div>

						<section>
							<table class="table table-hover">
								<thead class="thead">
									<tr>
										<th>Mã dịch vụ</th>
										<th>Tên dịch vụ</th>
										<th>Giá tiền</th>
										<th>Chức năng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="dv" items="${dsDichVu}">
										<tr>
											<td>${dv.maDichVu}</td>
											<td>${dv.tenDichVu}</td>
											<td>${dv.giaDichVu}</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/dich-vu/sua-dich-vu?maDichVu=${dv.maDichVu}">Chỉnh
													sửa</a> <a style="margin-left: 10px"
												href="${pageContext.request.contextPath}/admin/dich-vu/xoa-dich-vu?maDichVu=${dv.maDichVu}">Xóa</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
							<div id="checkid">${msg}</div>
							<!--Phan trang-->
							<ul class="pagination" style="float: right">
								<c:if test="${currentPage > 1}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/dich-vu/ds-dich-vu?page=${currentPage-1}">Previous</a></li>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<li class="page-item"><a class="active"> ${i} </a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a href="${pageContext.request.contextPath}/admin/dich-vu/ds-dich-vu?page=${i}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>



								<c:if test="${currentPage lt totalPages}">
									<li class="page-item"><a
										href="ds-dich-vu?page=${currentPage+1}">Next</a></li>
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