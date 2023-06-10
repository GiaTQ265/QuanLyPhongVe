<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sân bay</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH SÂN BAY</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<div style="float: right">
							<form>
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
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>TB1</td>
										<td>SB1</td>
										<td>SB2</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemSanBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
									<tr>
										<td>TB1</td>
										<td>SB1</td>
										<td>SB2</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemSanBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
									<tr>
										<td>TB1</td>
										<td>SB1</td>
										<td>SB2</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemSanBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
									<tr>
										<td>TB1</td>
										<td>SB1</td>
										<td>SB2</td>
										<td style="display: flex; justify-content: space-around">
											<a href="ManHinhThemSanBay.html">
												<button type="button" class="btn btn-info">Chỉnh
													sửa</button>
										</a>
											<button type="button" class="btn btn-danger">Xóa</button>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- Phân trang -->
							<ul class="pagination" style="float: right">
								<li class="page-item"><a class="page-link" href="#">Previous</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
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