<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="header.jsp" %>
  <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!doctype html>
<html>
<head>
    <title> Add PRODUCT</title>
	<meta charset="utf-8">
	<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="<c:url value="/resources/image/favicon.ico"/>" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>
 <form:form action="viewall.do" method="POST" commandName="foodproducts" >  
<h2 align="center">Product details</h2>
<div class="container">
<div class="row">
<c:forEach items="${foodproductsList}" var="foodproducts">
		<div class="col-md-3 column productbox">
		
    <img src="<c:url value="/resources/image/${foodproducts.imagename}"/>" class="img-responsive">
    <div class="producttitle"><c:out value="${foodproducts.productname}"></c:out></div>
    <div class="productprice"><c:out value="${foodproducts.productprice}"></c:out><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext"></div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a>
        <div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
        view
          <span class="glyphicon glyphicon-eye-open"></span>
           
        </a>
        </div>
        </div>
        </div>
        </c:forEach>
        </div>
        </div>
        
<!-- <table border="1" width="50%"> -->
<!-- 	 <th>product Id</th> -->
<!-- 	 <th>product name</th> -->
<!-- 	 <th>product price</th> -->
<!-- 	 <th>product quantity</th> -->
<!-- 	 <th>category</th> -->
<!-- 	 <th>product description</th> -->
<!--  	 <th>image name</th>  -->
	 
<%-- 	 <c:forEach items="${foodproductsList }" var="foodproducts"> --%>
<!-- 	 <tr> -->
<%-- 	  <td>${foodproducts.productId}</td> --%>
<%-- 	  <td>${foodproducts.productname }</td> --%>
<%-- 	  <td>${foodproducts.productprice}</td> --%>
<%-- 	  <td>${foodproducts.productquantity}</td> --%>
<%-- 	  <td>${foodproducts.category}</td> --%>
<%-- 	  <td>${foodproducts.productdescription}</td> --%>
<%-- 	  <td>${foodproducts.imagename }</td>  --%>
<%-- 	  <td><a href="edit/${foodproducts.productId}">Edit</a> </td> --%>
<%-- 		    <td><a href="delete/${foodproducts.productId}">Delete</a></td> --%>
	  
<!-- 	 </tr> -->
<%-- 	 </c:forEach> --%>
<!-- 	</table> -->
 </form:form>   
	<br>
	
	<input type="button" value="Back" onclick="javascript:history.back()"/>
</body>
</html>