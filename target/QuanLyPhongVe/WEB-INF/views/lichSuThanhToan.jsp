<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lịch sử thanh toán</title>
</head>
<body>
	<%@include file="/WEB-INF/jsp/admin.jsp"%>


	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h3>Lịch sử thanh toán</h3>
			<div class="row mt list">
				<div class="col-lg-9">
					<div class="content-panel">
						<!-- Search -->
						<!-- <div style="float: right; display: flex"> <label >Tìm kiếm:<input type="search" class="form-control form-control-sm" /> </label> </div> -->
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
										<th>Tên tuyến bay</th>
										<th>Tên chuyến bay</th>
										<th>Mã vé</th>
										<th>Ngày khởi hành</th>
										<th>Ngày mua vé</th>
										<th>Tổng tiền</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>MH370</td>
										<td>T001</td>
										<td>V001</td>
										<td>20/5/2023</td>
										<td>20/5/2023</td>
										<td>500000</td>
									</tr>
								</tbody>
							</table>
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