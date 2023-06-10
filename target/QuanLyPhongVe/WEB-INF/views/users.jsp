<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Dashboard" />
    <meta
      name="keyword"
      content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina"
    />

    <title>DASHGUM - FREE Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/css/zabuto_calendar.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/js/gritter/css/jquery.gritter.css"
    />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css" />

    <!-- Custom styles for this template -->
    <style><%@include file="/resources/assets/css/style.css"%></style>
    <link href="assets/css/style-responsive.css" rel="stylesheet" />

    <script src="assets/js/chart-master/Chart.js"></script>
  </head>

  <body>
    <section id="container">
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
        <div class="sidebar-toggle-box">
          <div
            class="fa fa-bars tooltips"
            data-placement="right"
            data-original-title="Toggle Navigation"
          ></div>
        </div>
        <!--logo start-->
        <a href="indexPhongVe.html" class="logo"><b>TÊN PHÒNG VÉ</b></a>
        <!--logo end-->
        <div class="nav notify-row" id="top_menu">
          <!--  notification start -->
          <ul class="nav top-menu"></ul>
          <!--  notification end -->
        </div>
        <div class="top-menu">
          <ul class="nav pull-right top-menu">
            <li><a class="logout" href="login.html">Logout</a></li>
          </ul>
        </div>
      </header>
      <!--header end-->

      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
        <div id="sidebar" class="nav-collapse">
          <!-- sidebar menu start-->
          <ul class="sidebar-menu" id="nav-accordion">
            <p class="centered">
              <img
                src="assets/img/airplane.jpg"
                class="img-circle"
                width="60"
              />
            </p>
            <h5 class="centered">User</h5>

            <li class="mt">
              <a class="active">
                <i class="fa fa-dashboard"></i>
                <span>Trang chủ</span>
              </a>
            </li>

            <li class="sub-menu">
              <a>
                <i class="fa fa-desktop"></i>
                <span>Thông tin user</span>
              </a>
              <ul class="sub">
                <li><a href="Xemthongtin.html">Xem thông tin</a></li>
                <li><a href="Suathongtin.html">Cập nhật thông tin</a></li>
                <li><a href="Doimatkhau.html">Đổi mật khẩu</a></li>
                <li><a href="ThanhToan.html">Lịch sử thanh toán</a></li>
              </ul>
            </li>
            <li class="sub-menu">
              <a>
                <i class="fa fa-desktop"></i>
                <span>Hỗ trợ</span>
              </a>
              <ul class="sub">
                <li><h3>liên hệ hotline:0231456856</h3></li>
                <li>
                  <a href="Hotro.html">Trang hỗ trợ</a>
                </li>
              </ul>
            </li>
          </ul>
          <!-- sidebar menu end-->
        </div>
      </aside>
      <!--sidebar end-->

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
     
      <!--footer start-->
      <footer class="site-footer">
        <div class="text-center">Java Full-Stack 2301 - FA Academy</div>
      </footer>
      <!--footer end-->
    </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script
      class="include"
      type="text/javascript"
      src="assets/js/jquery.dcjqaccordion.2.7.js"
    ></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script
      src="assets/js/jquery.nicescroll.js"
      type="text/javascript"
    ></script>
    <script src="assets/js/jquery.sparkline.js"></script>

    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
  </body>
</html>
