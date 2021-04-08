<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Title -->
	<title>Vigor</title>

	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nothing+You+Could+Do&display=swap">

	<!-- Favicon -->
	<link rel="shortcut icon" href="images/favicon.ico">

	<!-- Plugins CSS-->
		<spring:url value="/resources/css/plugins.css" var="pluginCss"/>
	<link href="${pluginCss}"  rel="stylesheet" />
	<!--  main css -->
	<link href="${mainCss}"  rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

	<!-- Core Style CSS -->
		<spring:url value="/resources/casestudy.css" var="mainCss"/>
	<link href="${mainCss}"  rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
</head>
<body>

	<!-- ==================== Start progress-scroll-button ==================== -->
    <div class="progress-wrap cursor-pointer">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
        <i class="ri-arrow-up-s-line"></i>
    </div>
    <!-- ==================== End progress-scroll-button ==================== -->

    <!-- ==================== Start cursor ==================== -->
    <div class="mouse-cursor cursor-outer"></div>
    <div class="mouse-cursor cursor-inner"></div>
    <!-- ==================== End cursor ==================== -->

    <!-- ==================== Start Header ==================== -->
	<header class="page-header text-white position-absolute">
		<div class="header-top d-none d-md-block">
			<div class="container-fluid">
				<div class="row justify-content-between">
					<div class="col-auto">
						<ul class="list-unstyled list-inline mb-0">
							<li class="d-inline mx-2"><a href="javascript:void(0);">Need Help? Benny.Burwell@gmail.com</a></li>
						</ul>
					</div>
					<div class="col-auto">
						<ul class="list-unstyled list-inline mb-0">
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="header-middle">
			<div class="container-fluid px-0">
				<div class="row no-gutters justify-content-between">
					<div class="col-auto d-flex flex-wrap align-content-stretch">
						<div class="d-flex flex-wrap align-content-stretch">
							<a class="d-flex flex-wrap align-items-center justify-content-center navbar-brand" >
								
							</a>
						</div>
					</div>
					<div class="col-auto">
						<nav class="navbar navbar-expand-xl navbar-dark">
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<span class="hamburger-menu-icon-small">
									<span></span>
									<span></span>
									<span></span>
								</span>
								<span class="pl-2 d-none d-md-block">Navigation</span>
							</button>
							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="./login">Sign In</a></li>
									<li class="nav-item"><a class="nav-link" href="./register">Register</a></li>
								</ul>
							</div>
						</nav>
					</div>
					<div class="col-auto d-flex flex-wrap align-content-stretch">
						<ul class="list-unstyled list-inline mb-0 d-flex flex-wrap align-content-stretch">
							<li class="block-search d-flex flex-wrap align-content-stretch">
							</li>
							<li class="block-account d-flex flex-wrap align-content-stretch">
								<a class="d-flex flex-wrap align-items-center justify-content-center" href="./login">
									<i class="ri-user-line"></i>	
								</a>
							</li>
							<
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- ==================== End Header ==================== -->

	<!-- ==================== Start Home ==================== -->
	<section  class="section full-home d-flex align-items-center" data-overlay-dark="1"style="background: url(resources/images/homebg.jpg) center;background-size: cover;">
		<div class="vc-bg-lines light lines-animate">
			<span class="border-1"></span>
			<span class="border-2"></span>
			<span class="border-3"></span>
			<span class="border-4"></span>
			<span class="border-5"></span>
			<span class="border-6"></span>
			<span class="border-7"></span>
		</div>
		<div class="container text-center">
			<div class="row justify-content-center">
				<div class="col-lg-6 col-md-9">
					<h4 data-splitting class="splitting animated text-uppercase text-white">TRACK YOUR PROGRESS WITH</h4>
					<h1 data-splitting class="splitting animated text-uppercase display-3 font-weight-bold text-white">VIGOR</h1>
					<p data-splitting class="splitting animated text-white"></p>
					<a class="data-splitting btn btn-primary mt-4" href="./register">Register Your Account</a>
					<a class="data-splitting btn btn-primary mt-4" href="./login">Login With Your Account</a>
				</div>
			</div>
		</div>
	</section>
	<!-- ==================== End Home ==================== -->	


	<!-- ==================== End Footer ==================== -->	

	<!-- jQuery -->
	<spring:url value="/resources/js/jquery-3.5.1.min.js" var="jQuery" />
	<script src="${jQuery}"></script>
	
	<!-- <script src="js/jquery-3.5.1.min.js"></script> -->
	
	<!-- Bootstrap -->
	<spring:url value="/resources/js/plugins/bootstrap/bootstrap.bundle.min.js" var="bootStrap" />
	<script src="${bootStrap}"></script>
	
	<!-- <script src="js/plugins/bootstrap/bootstrap.bundle.min.js"></script>  -->
	

	<!-- Custom -->
		<spring:url value="/resources/js/app.js" var="custom" />
	<script src="${custom}"></script>
	
	<!-- <script src="js/app.js"></script> -->

</body>
</html>