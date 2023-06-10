<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách vé đang chờ thanh toán</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3 style="text-align: center; color: #1e99cd;">DANH SÁCH VÉ
				ĐANG CHỜ THANH TOÁN</h3>
			<div class="row mt list"
				style="display: flex; justify-content: center">
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
							<table class="table table-hover ">
								<thead class="thead">
									<tr>
										<th>Mã vé</th>
										<th>Mã chuyến bay</th>
										<th>Số điện thoại</th>
										<th>Mã loại vé</th>
										<th>Mã dịch vụ</th>
										<th>Giờ thanh toán</th>
										<th>Ngày thanh toán</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Ve001</td>
										<td>CB001</td>
										<td>0375468542</td>
										<td>Pho thong</td>
										<td>DV001</td>
										<td>15:25</td>
										<td>2023-17-5</td>
										<td style="display: flex; justify-content: space-around">
											<button type="button" class="btn btn-danger">Hủy</button> <a
											href="VeMayBay.html">
												<button type="button" class="btn btn-success">
													Thanh toán</button>
										</a>
										</td>
									</tr>
									<tr>
										<td>Ve001</td>
										<td>CB001</td>
										<td>0375468542</td>
										<td>Pho thong</td>
										<td>DV001</td>
										<td>15:25</td>
										<td>2023-17-5</td>
										<td style="display: flex; justify-content: space-around">
											<button type="button" class="btn btn-danger">Hủy</button> <a
											href="VeMayBay.html">
												<button type="button" class="btn btn-success">
													Thanh toán</button>
										</a>
										</td>
									</tr>
									<tr>
										<td>Ve001</td>
										<td>CB001</td>
										<td>0375468542</td>
										<td>Pho thong</td>
										<td>DV001</td>
										<td>15:25</td>
										<td>2023-17-5</td>
										<td style="display: flex; justify-content: space-around">
											<button type="button" class="btn btn-danger">Hủy</button> <a
											href="VeMayBay.html">
												<button type="button" class="btn btn-success">
													Thanh toán</button>
										</a>
										</td>
									</tr>
									<tr>
										<td>Ve001</td>
										<td>CB001</td>
										<td>0375468542</td>
										<td>Pho thong</td>
										<td>DV001</td>
										<td>15:25</td>
										<td>2023-17-5</td>
										<td style="display: flex; justify-content: space-around">
											<button type="button" class="btn btn-danger">Hủy</button> <a
											href="VeMayBay.html">
												<button type="button" class="btn btn-success">
													Thanh toán</button>
										</a>
										</td>
									</tr>
									<tr>
										<td>Ve001</td>
										<td>CB001</td>
										<td>0375468542</td>
										<td>Pho thong</td>
										<td>DV001</td>
										<td>15:25</td>
										<td>2023-17-5</td>
										<td style="display: flex; justify-content: space-around">
											<button type="button" class="btn btn-danger">Hủy</button> <a
											href="VeMayBay.html">
												<button type="button" class="btn btn-success">
													Thanh toán</button>
										</a>
										</td>
									</tr>
									<tr>
										<td>Ve001</td>
										<td>CB001</td>
										<td>0375468542</td>
										<td>Pho thong</td>
										<td>DV001</td>
										<td>15:25</td>
										<td>2023-17-5</td>
										<td style="display: flex; justify-content: space-around">
											<button type="button" class="btn btn-danger">Hủy</button> <a
											href="VeMayBay.html">
												<button type="button" class="btn btn-success">
													Thanh toán</button>
										</a>
										</td>
									</tr>
									<tr>
										<td>Ve001</td>
										<td>CB001</td>
										<td>0375468542</td>
										<td>Pho thong</td>
										<td>DV001</td>
										<td>15:25</td>
										<td>2023-17-5</td>
										<td style="display: flex; justify-content: space-around">
											<button type="button" class="btn btn-danger">Hủy</button> <a
											href="VeMayBay.html">
												<button type="button" class="btn btn-success">
													Thanh toán</button>
										</a>
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