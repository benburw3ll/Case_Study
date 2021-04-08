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
									<li class="nav-item dropdown active">
										<a class="nav-link dropdown-toggle" href="javascript:void(0);" id="menu-home" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>
										<div class="dropdown-menu" aria-labelledby="menu-home">
											<a class="dropdown-item" href="./">Home</a>
										</div>
									</li>
									<li class="nav-item"><a class="nav-link" href="./addentry">Add Entry</a></li>
									<li class="nav-item dropdown">
										<a class="nav-link dropdown-toggle" href="javascript:void(0);" id="menu-trainer" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Results</a>
										<div class="dropdown-menu" aria-labelledby="menu-track">
											<a class="dropdown-item" href="./results">Results</a>
										</div>
									</li>
									<li class="nav-item dropdown">
				
									</li>
								</ul>
							</div>
						</nav>
					</div>
					<div class="col-auto d-flex flex-wrap align-content-stretch">
						<ul class="list-unstyled list-inline mb-0 d-flex flex-wrap align-content-stretch">
							<li class="block-search d-flex flex-wrap align-content-stretch">
							</li>
							<li class="block-account d-flex flex-wrap align-content-stretch">
								<a class="d-flex flex-wrap align-items-center justify-content-center" href="./signin">
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
	<section class="section bg-light full-home d-flex flex-wrap align-items-center" style="background: url(images/homebg.jpg) center; background-size: cover;">
		<div class="vc-bg-lines">
			<span class="border-1"></span>
			<span class="border-2"></span>
			<span class="border-3"></span>
			<span class="border-4"></span>
			<span class="border-5"></span>
			<span class="border-6"></span>
			<span class="border-7"></span>
		</div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-sm-11 col-md-8 col-lg-11 col-xl-10">
					<form class="bg-white p-5 shadow-lg">
						<div class="row">
							</div>
							
								<h2 class="text-uppercase font-weight-bold mb-4">Contact Us</h2>
								<div class="form-group">
									<label>Contact Back E-mail <span class="text-danger">*</span></label>
									<input type="email" name="contactEmail" class="form-control">
								</div>
								<div class="form-group">
									<label>Subject <span class="text-danger">*</span></label>
									<input type="text" name="subject" class="form-control">
								</div>
								<div class="form-group">
									<label>Message <span class="text-danger">*</span></label>
									<input type="text" name="message" class="form-control">
								</div>
							
						</div>
						<div class="row">
							<div class="col-lg-6 order-2 order-lg-1 mt-4 pr-lg-4"><a class="btn btn-dark btn-block" href="./">Back</a></div>
							<div class="col-lg-6 order-1 order-lg-2 mt-4 pl-lg-4"><button type="submit" class="btn btn-dark btn-block">Submit your lift</button></div>
						</div>
					</form>
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
	
	<!-- Splitting -->
	
	<spring:url value="/resources/js/plugins/splitting/splitting.min.js" var="split" />
	<script src="${split}"></script>
	
	<!-- <script src="js/plugins/splitting/splitting.min.js"></script> -->
	
	
	<!-- Countup -->
	<spring:url value="/resources/js/plugins/countup/countUp.min.js" var="countUp" />
	<script src="${countUp}"></script>
	
	<!--  <script src="js/plugins/countup/countUp.min.js"></script>  -->
	<!-- Magnific Popup -->
	
	<spring:url value="/resources/js/plugins/magnific-popup/jquery.magnific-popup.min.js" var="popUp" />
	<script src="${popUp}"></script>
	
	<!--  <script src="js/plugins/magnific-popup/jquery.magnific-popup.min.js"></script> -->
	
	
	<!-- Light Gallery -->
	
		<spring:url value="/resources/js/plugins/light-gallery/lightgallery-all.min.js" var="light" />
	<script src="${light}"></script>
	
	
	<!--<script src="js/plugins/light-gallery/lightgallery-all.min.js"></script>   -->
	
	
	
	<!-- Custom -->
		<spring:url value="/resources/js/app.js" var="custom" />
	<script src="${custom}"></script>
	
	<!-- <script src="js/app.js"></script> -->

</body>
</html>