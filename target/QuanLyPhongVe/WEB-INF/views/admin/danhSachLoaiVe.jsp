<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Danh sách loại vé</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH LOẠI VÉ</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<!-- Search -->

						<div style="float: right">
							<form action="${pageContext.request.contextPath}/admin/ve/timkiem"
								method="get">
								<input type="text" placeholder="Tìm kiếm" name="searchKey" />
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
										<th width="10%">Mã loại vé</th>
										<th width="10%">Tên loại vé</th>
										<th width="10%">Hệ số giá</th>
										<th width="10%"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${LoaiVe}" varStatus="status">
										<tr>
											<td>${c.maLoaiVe}</td>
											<td>${c.tenLoaiVe}</td>
											<td>${c.heSoGia}</td>
											<td style="display: flex; justify-content: space-around"><a
												href="${pageContext.request.contextPath}/admin/ve/chinhsua/${c.maLoaiVe}"><button
														type="button" class="btn btn-info">Chỉnh sửa</button></a> <a
												href="${pageContext.request.contextPath}/admin/ve/xoa/${c.maLoaiVe}"
												onclick="return confirm('Bạn có muốn xóa không?')"><button
														type="button" class="btn btn-danger">Xóa</button></a></td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
							<div class="list">
								<span style="color: #28a745;">${message}</span>
								<p style="color: red">${timKiems}</p>
								<br>
							</div>
							<!-- Phân trang -->

							<ul class="pagination" style="float: right;">
								<c:if test="${currentPage > 1}">
									<li><a href="${pageContext.request.contextPath}/admin/ve/danhSachLoaiVe?page=${currentPage-1}">Trang
											trước</a></li>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<li><a class="active"> ${i} </a></li>
										</c:when>
										<c:otherwise>
											<li><a href="${pageContext.request.contextPath}/admin/ve/vedanhSachLoaiVe?page=${i}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${currentPage lt totalPages}">
									<li><a href="${pageContext.request.contextPath}/admin/ve/danhSachLoaiVe?page=${currentPage+1}">Tiếp
											theo</a></li>
								</c:if>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</section>
	</section>
</body>
</html>