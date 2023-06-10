<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách máy bay</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH MÁY BAY</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<!-- Search -->
						<!-- <div style="float: right; display: flex"> <label >Tìm kiếm:<input type="search" class="form-control form-control-sm" /> </label> </div> -->
						<div style="float: right">
							<form action="${pageContext.request.contextPath }/admin/maybay/timmaybay">
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
										<th>Mã máy bay</th>
										<th>Tên máy bay</th>
										<th>Số lượng ghế</th>
										<th>Số lượng ghế thương gia</th>
										<th>Trạng thái</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="c" items="${maybays}" varStatus="status">
										<tr>
											<td>${c.maMayBay}</td>
											<td>${c.tenMayBay}</td>
											<td>${c.soLuongGhe}</td>
											<td>${c.soLuongGheThuongGia}</td>
											<td>${c.trangThai}</td>
											<td style="display: flex; justify-content: space-around">
												<a href="${pageContext.request.contextPath }/admin/maybay/suamaybay/${c.maMayBay}">
													<button type="button" class="btn btn-info">Chỉnh
														sửa</button>
											</a> <a href="${pageContext.request.contextPath }/admin/maybay/xoamaybay/${c.maMayBay}">
													<button type="button" class="btn btn-danger">Xóa</button>
											</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- Phân trang -->
							<ul class="pagination" style="float: right">
								<c:if test="${currentPage > 1}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath }/admin/maybay/timmaybay?search=${key}&page=${currentPage-1}">Previous</a>
									</li>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<li class="page-item"><a class="active"> ${i} </a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a
												href="${pageContext.request.contextPath }/admin/maybay/timmaybay?search=${key}&page=${i}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<c:if test="${currentPage lt totalPages}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath }/admin/maybay/timmaybay?search=${key}&page=${currentPage+1}">Next</a>
									</li>
								</c:if>
							</ul>
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