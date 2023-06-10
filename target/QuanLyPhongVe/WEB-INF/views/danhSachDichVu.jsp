<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách dịch vụ</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>


	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>BẢNG DANH SÁCH DỊCH VỤ</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<!-- Search -->

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
										<th>Mã dịch vụ</th>
										<th>Tên dịch vụ</th>
										<th>Giá tiền</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>DV001</td>
										<td>Nước ngọt</td>
										<td>50000</td>
									</tr>
									<tr>
										<td>DV002</td>
										<td>Bánh mì</td>
										<td>20000</td>
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