<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp" %>
  <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Angular.JS -->

<link rel="icon" href="<c:url value="/resources/image/favicon.ico"/>" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<style>
.gold{
	color: #FFBF00;
}

/*********************************************
					PRODUCTS
*********************************************/

.product{
	border: 1px solid #dddddd;
	height: 321px;
}

.product>img{
	max-width: 230px;
}

.product-rating{
	font-size: 20px;
	margin-bottom: 25px;
}

.product-title{
	font-size: 20px;
}

.product-desc{
	font-size: 14px;
}

.product-price{
	font-size: 22px;
}

.product-stock{
	color: #74DF00;
	font-size: 20px;
	margin-top: 10px;
}

.product-outofstock{
	color: red;
	font-size: 20px;
	margin-top: 10px;
}

.product-info{
		margin-top: 50px;
}

/*********************************************
					VIEW
*********************************************/

.content-wrapper {
	max-width: 1140px;
	background: #fff;
	margin: 0 auto;
	margin-top: 25px;
	margin-bottom: 10px;
	border: 0px;
	border-radius: 0px;
}

.container-fluid{
	max-width: 1140px;
	margin: 0 auto;
}

.view-wrapper {
	float: right;
	max-width: 70%;
	margin-top: 25px;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
	max-width: 100%;
}

/*********************************************
				ITEM 
*********************************************/

.service1-items {
	padding: 0px 0 0px 0;
	float: left;
	position: relative;
	overflow: hidden;
	max-width: 100%;
	height: 321px;
	width: 130px;
}

.service1-item {
	height: 107px;
	width: 120px;
	display: block;
	float: left;
	position: relative;
	padding-right: 20px;
	border-right: 1px solid #DDD;
	border-top: 1px solid #DDD;
	border-bottom: 1px solid #DDD;
}

.service1-item > img {
	max-height: 110px;
	max-width: 110px;
	opacity: 0.6;
	transition: all .2s ease-in;
	-o-transition: all .2s ease-in;
	-moz-transition: all .2s ease-in;
	-webkit-transition: all .2s ease-in;
}

.service1-item > img:hover {
	cursor: pointer;
	opacity: 1;
}

.service-image-left {
	padding-right: 10px;
}

.service-image-right {
	padding-left: 10px;
}

.service-image-left > center > img,.service-image-right > center > img{
	max-height: 155px;
}



</style>

</head>
<body  ng-controller="cartCtrl">
<form:form method="PUT">
<div class="container-fluid">
    <div class="content-wrapper">	
			<div class="container" ng-app="cartApp">	
				<div class="col-md-12">
<!-- 					<div class="product col-md-6 service-image-left"> -->
                    <div class="thumbnail">
						<center>
							<img  src="<c:url value="/resources/image/${foodproducts.imagename}"/>" alt=""></img>
						</center>
						</div>
						</div>
<!-- 					</div> -->
				
					
				<div class="col-md-6">
					<div class="product-title"><c:out value="${foodproducts.productname}"></c:out></div>
					<div class="product-desc"><c:out value="${foodproducts.productdescription}"></c:out></div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">Rs.<c:out value="${foodproducts.productprice}"></c:out></div>
					<div ng-model="${foodproducts.productquantity}">
					<div class="product-stock" ng-if="${foodproducts.productquantity}">In Stock</div>
 					<div class="product-outofstock" ng-hide="${foodproducts.productquantity}">Out of Stock</div>
					</div>
					<hr>
					
                           <p ng-controller="cartCtrl">
						<a href="#" class="btn btn-success btn-large"
							ng-click="addToCart('${foodproducts.productId}')"><span
							class="glyphicon glyphicon-shopping-cart"></span> Add to cart </a>
							
						
					
							<a href="<spring:url value="/customer/cart" />" class="btn btn-default"><span
							class="glyphicon glyphicon-hand-right"></span> View Cart</a>
					</p>
				</div>
			</div> 
		</div>		
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						<li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
						
					</ul>
<!-- 				<div id="myTabContent" class="tab-content"> -->
<!-- 						<div class="tab-pane fade in active" id="service-one"> -->
						 
<!-- 							<section class="container product-info"> -->
<!-- 								The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable, continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet, dual ball-bearing fan automatically adjusts its speed according to temperature, so it will never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool glow. Not feeling blue? You can turn off the lighting with the press of a button. -->

<!-- 								<h3>Corsair Gaming Series GS600 Features:</h3> -->
<!-- 								<li>It supports the latest ATX12V v2.3 standard and is backward compatible with ATX12V 2.2 and ATX12V 2.01 systems</li> -->
<!-- 								<li>An ultra-quiet 140mm double ball-bearing fan delivers great airflow at an very low noise level by varying fan speed in response to temperature</li> -->
<!-- 								<li>80Plus certified to deliver 80% efficiency or higher at normal load conditions (20% to 100% load)</li> -->
<!-- 								<li>0.99 Active Power Factor Correction provides clean and reliable power</li> -->
<!-- 								<li>Universal AC input from 90~264V — no more hassle of flipping that tiny red switch to select the voltage input!</li> -->
<!-- 								<li>Extra long fully-sleeved cables support full tower chassis</li> -->
<!-- 								<li>A three year warranty and lifetime access to Corsair’s legendary technical support and customer service</li> -->
<!-- 								<li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li> -->
<!-- 								<li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li> -->
<!-- 								<li>MTBF: 100,000 hours</li> -->
<!-- 								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li> -->
<!-- 							</section> -->
										  
<!-- 						</div> -->	
<!-- 					<div class="tab-pane fade" id="service-two"> -->
						
<!-- 						<section class="container"> -->
								
<!-- 						</section> -->
						
<!-- 					</div> -->
<!-- 					<div class="tab-pane fade" id="service-three"> -->
												
<!-- 					</div> -->
<!-- 				</div> -->
				<hr>
			</div>
		</div>
		<button class="btn" onclick="javascript:history.back()">Cancel</button>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>

</form:form>
</body>
</html>