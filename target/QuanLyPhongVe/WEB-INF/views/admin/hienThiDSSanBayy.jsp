<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.anhhoang {
	border-left: 1px solid #ddd;
}

.mauchu {
	color: #428bca;
}

.anhhoanghover:hover {
	background-color: #eee;
}

.anhhoangcanle {
	padding: 5px;
}

#previos:hover {
	background-color: #eee;
}

#soPhanTrang:hover {
	background-color: #eee;
}

#PhanTrangSo:hover {
	background-color: #eee;
}

#Next:hover {
	background-color: #eee;
}
</style>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Xin Chào!!!</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700" />
<link rel="stylesheet" href="assets/css/style.css" />
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH SÂN BAY</h3>
			<div class="row list mt">
				<div class="col-lg-9">
					<div class="content-panel">
						<div style="float: right">
							<form action="${pageContext.request.contextPath}/admin/sanbay/timkiem">
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
										<th>Mã sân bay</th>
										<th>Tên sân bay</th>
										<th>Địa điểm</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty sanbays}">
										<c:forEach var="c" items="${sanbays}">
											<tr style="border: 1px black solid;">
												<td scope="col">${c.maSanBay}</td>
												<td scope="col">${c.tenSanBay}</td>
												<td scope="col">${c.diaDiem}</td>
												<td scope="col"><a
													href="${pageContext.request.contextPath}/admin/sanbay/update/${c.maSanBay}"
													class="btn btn-info"> Chỉnh sửa </a></td>
												<td scope="col"><a
													href="${pageContext.request.contextPath}/admin/sanbay/delete/${c.maSanBay}"
													class="btn btn-danger"
													onclick="return confirm('Bạn có muốn xóa không?')">
														Xóa </a></td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
							<!-- Phân trang -->
							<div class="pagination  p-3"
								style="border: 1px solid #ddd; float: right">
								<c:if test="${currentPage > 1}">
									<a href="${pageContext.request.contextPath}/admin/sanbay/hienthisanbay?page=${currentPage-1}" class=" mauchu p-3 "
										id="previos">Previous</a>
								</c:if>
								<c:forEach begin="1" end="${totalPages}" var="i">
									<c:choose>
										<c:when test="${currentPage eq i}">
											<a class="active anhhoang mauchu p-3 " id="soPhanTrang">
												${i} </a>
										</c:when>
										<c:otherwise>
											<a href="${pageContext.request.contextPath}/admin/sanbay/hienthisanbay?page=${i}" class=" anhhoang mauchu p-3"
												id="phanTrangSo">${i}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<c:if test="${currentPage lt totalPages}">
									<a href="${pageContext.request.contextPath}/admin/sanbay/hienthisanbay?page=${currentPage+1}"
										class=" anhhoang mauchu p-3 " id="Next">Next</a>
								</c:if>
							</div>
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