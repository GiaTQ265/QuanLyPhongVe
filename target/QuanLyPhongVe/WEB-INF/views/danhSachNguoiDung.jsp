<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách người dùng</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH NGƯỜI DÙNG</h3>
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
									<tr>
										<td>Tran Van A</td>
										<td>20/2/2000</td>
										<td>Nam</td>
										<td>0315245845</td>
										<td>Da Nang</td>
										<td>VanA@gmail.com</td>
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