<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách vé đang chờ thanh toán</title>
</head>
<body>
	<%@include file="/WEB-INF/views/admin/admin.jsp"%>
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
							<form
								action="${pageContext.request.contextPath}/admin/ve/tim-kiem"
								method="get">
								<input type="text" placeholder="Nhập mã vé" name="searchKey" />
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
										<th width="10%">Mã vé</th>
										<th width="10%">Mã chuyến bay</th>
										<th width="10%">Số điện thoại</th>
										<th width="10%">Mã loại vé</th>
										<th width="10%">Mã dịch vụ</th>
										<th width="10%">Giờ thanh toán</th>
										<th width="10%">Ngày thanh toán</th>
										<th width="10%">Trạng thái</th>
										<th></th>
									</tr>
								</thead>
								<tbody id="tablePaging">
									<c:forEach var="c" items="${ThongTinThanhToan}"
										varStatus="status">
										<tr>
											<td>${c[0]}</td>
											<td>${c[1]}</td>
											<td>${c[2]}</td>
											<td>${c[3]}</td>
											<td>${c[4]}</td>
											<td>${c[5]}</td>
											<td>${c[6]}</td>
											<td>${c[7]}</td>
											<td style="display: flex; justify-content: space-around">
												<a
												href="${pageContext.request.contextPath}/admin/ve/xoa-ve-dat-cho/${c[8]}"
												onclick="return confirm('Bạn có muốn hủy vé này không?')"><button
														type="button" class="btn btn-danger">Hủy vé</button></a> <a
												href="${pageContext.request.contextPath}/admin/ve/ve-may-bay/${c[8]}"><button
														type="button" class="btn btn-success">Thanh toán</button></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- <div id="pagination" style="float: right;"></div> -->
							<div class="list">
								<p style="color: red">${timKiems}</p>
								<br>
							</div>

							<!-- Phân trang -->
							 <div class="pagination" style="float: right;">
								<c:if test="${currentPage > 1}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/ve/tim-kiem?searchKey=${key}&page=${currentPage-1}">Trang trước</a>
									</li>
								</c:if>
								<c:if test="${1 lt (currentPage-2)}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/ve/tim-kiem?searchKey=${key}&page=${currentPage-2}">...</a></li>
								</c:if>
								<c:if test="${(currentPage+2) lt totalPages}">
									<c:forEach begin="${currentPage}" end="${currentPage+2}"
										var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="active"> ${i} </a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="${pageContext.request.contextPath}/admin/ve/tim-kiem?searchKey=${key}&page=${i}">${i}</a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
								<c:if test="${totalPages <= (currentPage+2)}">
									<c:forEach begin="${currentPage}" end="${totalPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="active"> ${i} </a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="${pageContext.request.contextPath}/admin/ve/tim-kiem?searchKey=${key}&page=${i}">${i}</a></li>
											</c:otherwise>

										</c:choose>
									</c:forEach>
								</c:if>
								<c:if test="${(currentPage+2) lt totalPages}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/ve/tim-kiem?searchKey=${key}&page=${currentPage+2}">...</a></li>
								</c:if>
								<c:if test="${currentPage lt totalPages}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/admin/ve/tim-kiem1?searchKey=${key1}&page=${currentPage+1}">Tiếp theo</a></li>
								</c:if>
							</div> 
						</section>
					</div>
				</div>
			</div>
		</section>

	</section>

	<!--main content end-->
</body>
<!-- <script>
	var table = document.getElementById("tablePaging");
	var rowsPerPage = 1; // Số dòng hiển thị trên mỗi trang
	let currentPage = 1; // Trang hiện tại

	function displayTable() {
		  var startIndex = (currentPage - 1) * rowsPerPage;
		  var endIndex = startIndex + rowsPerPage;
		  var rows = table.rows;
		  
		  // Ẩn tất cả các dòng của bảng
		  for (var i = 0; i < rows.length; i++) {
		    if (i >= startIndex && i < endIndex) {
		      rows[i].style.display = "table-row";
		    } else {
		      rows[i].style.display = "none";
		    }
		  }
		}

		function createPagination() {
		  var pageCount = Math.ceil((table.rows.length - 1) / rowsPerPage); // Tính tổng số trang
		  
		  // Tạo nút điều hướng trang trước
		  var prevButton = document.createElement("button");
		  prevButton.classList.add("btn");
		  prevButton.classList.add("btn-info");
		  prevButton.innerHTML = "Trang trước";
		  prevButton.addEventListener("click", function() {
		    if (currentPage > 1) {
		      currentPage--;
		      displayTable();
		      createPagination();
		    }
		  });
		  
		  // Tạo nút điều hướng trang tiếp theo
		  var nextButton = document.createElement("button");
		  nextButton.classList.add("btn");
		  nextButton.classList.add("btn-info");
		  nextButton.innerHTML = "Trang tiếp";
		  nextButton.addEventListener("click", function() {
		    if (currentPage < pageCount) {
		    	currentPage++;
		      displayTable();
		      createPagination();
		    }
		  });
		  
		  // Hiển thị trang hiện tại và tổng số trang
		  var pageInfo = document.createElement("span");
		  pageInfo.innerHTML = " Trang " + currentPage + " / " + pageCount +" ";
		  
		  // Thêm các phần tử vào phân trang
		  var pagination = document.getElementById("pagination");
		  pagination.innerHTML = "";
		  pagination.appendChild(prevButton);
		  pagination.appendChild(pageInfo);
		  pagination.appendChild(nextButton);
		}

		displayTable();
		createPagination();
	</script> -->
</html>