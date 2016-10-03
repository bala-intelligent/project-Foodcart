<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="header.jsp" %>
 
   <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
  <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!doctype html>
<html>
<head>
    <title> Add PRODUCT</title>
	<meta charset="utf-8">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/product.js" /> "></script>
<script>

</script>
</head>
<body>
  <%-- <form:form action="viewall.do" method="POST" commandName="foodproducts" >  --%>
<h2 align="center">Product details</h2>


<div class="container" ng-app="productsApp">

                       
<div ng-controller="productsCtrl">


<div>
        <form class="form-horizontal">
            <div class="form-group">
                <div class="col-md-3"><label><i class="fa fa-question-circle fa-fw"></i>Category List</label></div>
                <div class="col-md-4">
                
                    <select class="form-control" ng-model="categorys"  >
                       <option value="" disabled>Select Category</option>
                        <option value="vegetarian">vegetarian</option>
                         <option value="snacks">snacks</option>
                          <option value="non-vegetarian">Nonvegetarian</option>
                           <option value="beverages">Beverages</option>
                   </select>
                </div>
            </div>
        </form>
    </div>


<!-- ng-options="category.category for category in foodproductsList |removeDups" -->


Search : <input class="input-md" ng-model="categorys">
<br/>
<br/>
<div class="row">
<div ng-repeat="it in foodproductsList | filter : categorys : true ">
		<div class="col-md-3 column productbox">
		 <img src="<c:url value="/resources/image/{{it.imagename}}"/>" class="img-responsive"></img>
    <div class="producttitle"><c:out value="{{it.productname}}"></c:out></div>
    <div class="productprice">Rs.<c:out value="{{it.productprice}}"></c:out></div>
    <div class="Category"><c:out value="{{it.category}}"></c:out></div>
    
	
  <sec:authorize access="hasRole('ROLE_ADMIN')">
        <div class="pull-right"> 
        <a href="<c:url value="edit/ {{it.productId}}"/>" class="btn btn-success btn-xs" role="button">
        Edit
          <span class="glyphicon glyphicon-edit"></span> 
        </a>
        </div>
        <div class="pull-left"><a href="<c:url value="delete/{{it.productId}}"/>" class="btn btn-success btn-xs" role="button">
        Delete
        <span class="glyphicon glyphicon-trash"></span>
        </a></div>
  </sec:authorize>
         <div class="pull-right"> <a href="<c:url value="view/{{it.productId}}"/>" class="btn btn-danger btn-xs" role="button">
        view
          <span class="glyphicon glyphicon-view"></span> 
           
        </a>
        </div>
        </div>
       </div>
        </div>
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
  <%-- </form:form>   --%>
  
	<br>
	<input type="button" value="Back" onclick="javascript:history.back()"/>
	
</body>
</html>