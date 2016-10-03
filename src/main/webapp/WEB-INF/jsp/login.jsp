<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
    <%@include file="includes.jsp" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
    <title> login</title>
	 <meta charset="utf-8">
<script>
		// called when mouse over
		function mouseOverListenerFunc(o){
			o.type = "text";
		}
		// called when mouse out
		function mouseOutListenerFunc(o){
			o.type = "password";
		}
		
		window.history.forward();
		function noBack() { window.history.forward(); }
		</script>
</head>


<style>
.wrapper {    
	margin-top: 80px;
	margin-bottom: 20px;
}

.form-signin {
  max-width: 420px;
  padding: 30px 38px 66px;
  margin: 0 auto;
  background-color: #eee;
  border: 3px dotted rgba(0,0,0,0.1);  
  }

.form-signin-heading {
  text-align:center;
  margin-bottom: 30px;
}

.form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
}

input[type="text"] {
  margin-bottom: 0px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}

input[type="password"] {
  margin-bottom: 20px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.colorgraph {
  height: 7px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
 background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
 <body onload='document.loginForm.username.focus();'>
<div class = "container" >
	<div class="wrapper">
	<div class="col-md-8">
		      
		    <h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
			  <hr class="colorgraph"><br>
			  
			  <c:if test="${not empty error}"><div> <h3 class="">${error}</h3></div></c:if>
	          <c:if test="${not empty message}"><div class="alert alert-success" role="alert">${message}</div></c:if>
			  <form:form action="j_spring_security_check"  method="POST" id="target">

			  <input  type="text" class="form-control"  placeholder="Username"  name="username" required  />
			  
			  <input type="password" class="form-control showpassword" id="password" placeholder="Password"  name="password" style="margin-top:20px"  onmouseover="mouseOverListenerFunc(this)" onmouseout="mouseOutListenerFunc(this)"/>
			 		  
 			 		

<button type="button" id="eye" onclick="if(password.type=='text')password.type='password'; else password.type='text';">
   <img src="<c:url value="/resources/image/spy.png"/>" class="img-responsive">
</button>


			 		  
z			  <input class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit" style="margin-top:20px">
			  	
			  <span class="pull-right"><a href="register">Register</a></span>	
			  	
		</form:form>
				
	</div>
	<div class="col-md-4">
	<img src="<c:url value="/resources/image/food.gif"/>" class="img-responsive">
	
	</div>
	</div>
</div>
	<div class="modal-footer">
	     <button class="btn" onclick="javascript:history.back()">Cancel</button>
	</div>
 <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/> 
</body>
</html>
