<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BK FOODCART</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon"
	href="<c:url value="/resources/image/favicon.ico"/>" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<!-- Owl Carousel -->
		<link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css"/> " >
        <!-- bootstrap.min css -->
		<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" >
        <!-- Font-awesome.min css -->
		<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>" >
        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="<c:url value="/resources/css/animate.min.css"/>">

		<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
        <!-- Responsive Stylesheet -->
		<link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"/>">
		
		




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


</style>
	
			
		

</head>
<body>
 
 
  
  
  
  
<section id="hero-area"> <img class="img-responsive"
		src="<c:url value="/resources/image/login1.jpg"/>" alt=""> </section>
	<!--     <hr/> -->

	<h4 align="right">
		<!-- display the userId just entered -->
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<li class="active"><a>Current User:
					${pageContext.request.userPrincipal.name}</a></li>
		</c:if>
	</h4>


	<!--
    Header start 
	============================== -->
	<nav id="navigation">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="block">
					<nav class="navbar navbar-default">
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
							<a class="navbar-brand" href="#"> <img src="<c:url value="/resources/image/logofoodcart.png"/>"
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
											id="cart-item-count" class="product-count">{{calCountTotal()}}</span> </a></li>
								</c:if>

								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#">Availables <span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<li class="active"><a href="veg">VEGETARIAN</a></li>
										<li class="active"><a href="nonveg">NONVEGETARIAN</a></li>
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
	<!-- .container close --> </nav>
           



	
	<!-- end of navigation bar -->
	