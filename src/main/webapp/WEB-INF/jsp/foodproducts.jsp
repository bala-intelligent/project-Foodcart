<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BK FOODCART</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon"
	href="<c:url value="/resources/image/favicon.ico"/>" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/product.js" /> "></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>

<!-- Owl Carousel -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/owl.carousel.css"/> ">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<!-- Font-awesome.min css -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome.min.css"/>">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.min.css"/>">

<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
<!-- Responsive Stylesheet -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/responsive.css"/>">


<!-- Js -->





<style>
hr {
	width: 100%;
	height: 8px;
	margin-left: auto;
	margin-right: auto;
	background-color: #FF0066;
	color: #FF0066;
	border: 0 none;
}
</style>

<style>
#the-slider img {
	width: 100%;
}

.navbar-brand {
	margin: 0;
	padding: 0;
	.
	{
	.
	navbar-brand
	img
	{
	max-height
	:
	100%;
}


</style>


</head>
<body>





	<section> 
		id="hero-area"> <img class="img-responsive"
		src="<c:url value="/resources/image/header.jpg"/>" alt="">
		 </section>

	<h4 align="right">
		<!-- display the userId just entered -->
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<li class="active"><a>Current User:
					${pageContext.request.userPrincipal.name}</a></li>
		</c:if>
		<jsp:useBean id="now" class="java.util.Date" />
		
	</h4>




	<!--
    Header start 
	============================== --> <nav id="navigation">
	<div class="container" ng-app="cartApp">
		<div class="row" ng-controller="cartCtrl">
			<div class="col-md-12">
				<div class="block">
					<nav class="navbar navbar-default ">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"> <img
								src="<c:url value="/resources/image/logofoodcart.png"/>"
								alt="Logo">
							</a>

						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right" id="top-nav">
								<li><a href="<c:url value="/home" />">Home</a></li>
								<li><a href="<c:url value="/about" />">About</a></li>
								<li><a href="<c:url value="/viewallcarts" />">viewall</a></li>
								<sec:authorize access="hasRole('ROLE_ADMIN')">
									<li><a href="<c:url value="/frontcrud" />">Add
											Products</a></li>
								</sec:authorize>
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<li><a>Welcome:
											${pageContext.request.userPrincipal.name}</a></li>
									<li><a href="<c:url value="/logout" />">Logout</a></li>
									<c:if
										test="${pageContext.request.userPrincipal.name == 'admin'}">
										<li><a href="<c:url value="admin/" />">Admin</a></li>
									</c:if>

								</c:if>

								<c:if
									test="${pageContext.request.userPrincipal.name != 'admin'}">
									<li><a href="<c:url value="/customer/cart" />"><i
											class="glyphicon glyphicon-shopping-cart"></i> My Cart <span
											id="cart-item-count" class="product-count">{{calCountTotal()}}</span>
									</a></li>
								</c:if>

								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#">Availables <span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<li class="active"><a href="vegetarian">VEGETARIAN</a></li>
										<li class="active"><a href="nonvegetarian">NONVEGETARIAN</a></li>
										<li class="active"><a href="snacks">SNACKS</a></li>
										<li class="active"><a href="beverages">BEVERAGES</a></li>

									</ul></li>


								<c:if test="${pageContext.request.userPrincipal.name == null}">
									<li><a href="<c:url value="memberShip.obj" />"><span
											class="glyphicon glyphicon-user"></span> Sign Up</a></li>
									<li><a href="<c:url value="loginpages" />"><span
											class="glyphicon glyphicon-log-in"></span> Login</a></li>
								</c:if>
								<sec:authorize access="hasRole('ROLE_USER')">
									<li><a href="<c:url value="registers" />"><span
											class="glyphicon glyphicon-user"></span>Cart Registry</a></li>
								</sec:authorize>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid --> </nav>
				</div>
			</div>
			<!-- .col-md-12 close -->
		</div>
		<!-- .row close -->
	</div>
	<!-- .container close --> </nav> <!-- header close --> <!--
	
	
	
	






	<!-- end of navigation bar -->

	<div class="container-fluid"
		style="background-color: white; color: black; height: 50px;">
		<p class="text-center danger">
			<Strong> If a person cares for his health,it is difficult to
				find a doctor who would know what's better for him.<mark>-Socrates</mark>

			</Strong>
		</p>
		<h5>${now}</h5>
	</div>




	<!---row2--->

	<div class="container">
	<div class="row">
	<div id="myCarousel" class="carousel  slide"  >
  <!-- Dot Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <!-- Items -->
  <div class="carousel-inner">
    <div class="active item">  <img src="<c:url value="/resources/image/slider1.jpg"/>" alt="..."> </div>
    <div class="item">  <img src="<c:url value="/resources/image/slider2.jpg"/>" alt="..."> </div>
    <div class="item">  <img src="<c:url value="/resources/image/slider3.jpg"/>" alt="..."></div>
  </div>
  <!-- Navigation -->
   <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
</div>
	</div>
</div>
	<!---row3--->
	<div class="container">
		<div class="col-md-3 column productbox">
			<a href="" ng-click=ctrl.veg()><img
				src="<c:url value="/resources/image/thumbnail1.jpg"/>"
				class="img-responsive"></a>
			<div class="producttitle">VEGETARIAN</div>
			
		</div>
		<div class="col-md-3 column productbox">
			<a href="nonveg" ng-click=ctrl.nonveg()><img
				src="<c:url value="/resources/image/thumbnail2.jpg"/>"
				class="img-responsive"></a>
			<div class="producttitle">NON VEGETARIAN</div>
			
		</div>
		<div class="col-md-3 column productbox">
			<a href="snack"ng-click=ctrl.snack()> <img
				src="<c:url value="/resources/image/thumbnail3.jpg"/>"
				class="img-responsive"></a>
			<div class="producttitle">SNACKS</div>
			
		</div>
		<div class="col-md-3 column productbox">
			<a href="bev"ng-click=ctrl.bev()> <img
				src="<c:url value="/resources/image/thumbnail4.png"/>"
				class="img-responsive"></a>
			<div class="producttitle">BEVERAGES</div>
			
		</div>
	</div>
	<style>
.productbox {
	background-color: #ffffff;
	padding: 10px;
	margin-bottom: 10px;
	-webkit-box-shadow: 0 8px 6px -6px #999;
	-moz-box-shadow: 0 8px 6px -6px #999;
	box-shadow: 0 8px 6px -6px #999;
}

.producttitle {
	font-weight: bold;
	padding: 5px 0 5px 0;
}

.productprice {
	border-top: 1px solid #dadada;
	padding-top: 5px;
}

.pricetext {
	font-weight: bold;
	font-size: 1.4em;
}
</style>
	<%@include file="footer.jsp"%>

</body>
</html>