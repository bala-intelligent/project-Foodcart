<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file="includes.jsp" %>
<!doctype html>
<html>
<head>

	<title>My Website</title>
	 <meta charset="utf-8">
 <link rel="shortcut icon" href="<c:url value="/resources/image/favicon.ico"/>" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<style>
.error {
	color: red;
}

.errorblock {
	color: red;
	background-color: red;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
	
}
/* body { */
/*     background-image: url( "<c:url value="/resources/image/who are u.gif"/>" ); */
/* } */

body {
    background: url("<c:url value="/resources/image/coffee.jpg"/>") no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-position: 50% 50%;
    font-family: 'Open Sans', sans-serif;
}

fieldset { border:1px solid green }

legend {
  padding: 0.2em 0.5em;
  border:1px solid green;
  color:green;
  font-size:90%;
  text-align:right;
  }
  
  label {
  float:left;
  width:25%;
  margin-right:0.5em;
  padding-top:0.2em;
  text-align:right;
  font-weight:bold;
  }
</style>
 
 
 
 

</head>
<body>
<%@include file="header.jsp"%>
<div class="container">
<div class="col-lg-12">
 <a href="foodproducts"  class="btn btn-danger">Home</a>
<form:form class="form-horizontal"  modelAttribute="registration"  role="form" method="POST" >
  <fieldset>
 
<!--  <p style="text-align:center;"> -->
<%--  <img src="<c:url value="/resources/image/who are u.gif"/>" height="200" width="1000"> --%>
<!--  </p> -->

    <div id="legend">
      <legend>Register</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username" style="color:white" >Username</label>
      <div class="controls">
        <form:input id="username"  path="username" name="username" placeholder="" class="input-md" required="true" />
        <span class="help-block" style="color:pink;text-align:center">Username can contain any letters or numbers, without spaces</span>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
					  <div>
					  <span style="text-align:center">${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email" style="color:white">E-mail</label>
      <div class="controls">
        <form:input  id="email" name="email" path="email" placeholder="" class="input-md" required="true"/>
        <p class="help-block" style="color:pink;text-align:center">Please provide your E-mail</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
 <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="phonenumber" style="color:white">Phone number</label>
      <div class="controls">
        <form:input  id="phonenumber" name="phonenumber" path="phonenumber" placeholder="" class="input-md" required="true"/>
        <p class="help-block" style="color:pink;text-align:center">Please provide your Phone-Number</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
    
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password" style="color:white">Password</label>
      <div class="controls">
        <form:input type="password" id="password" name="password"  path="password" placeholder="" class="input-md" required="true"  pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$" />
     
       <form:errors path="password" cssClass="error" />
        <p class="help-block" style="color:pink;text-align:center">Password should be at least 4 characters</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="password_confirm" style="color:white">Password (Confirm)</label>
      <div class="controls">
        <form:input type="password" id="confirmpassword" name="password_confirm" path="confirmpassword" placeholder="" class="input-md" />
        <form:errors path="confirmpassword" cssClass="error" />
        <p class="help-block" style="color:pink;text-align:center">Please confirm password</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
    
    
      <!-- Button -->
      <div class="controls" style="text-align:center;">
      <div class="row">
        <button class="btn btn-success"  name="_eventId_submit" type="submit" value="Submit" >Register</button>
       <button class="btn">Cancel</button>


       </div>
	    
	</div>
	
    
   
	
	<script>
 var password = document.getElementById("password")
  , confirmpassword = document.getElementById("confirmpassword");

function validatePassword(){
  if(password.value != confirmpassword.value) {
    confirmpassword.setCustomValidity("Passwords Don't Match");
  } else {
    confirmpassword.setCustomValidity("");
  }
}


password.onchange = validatePassword;
confirmpassword.onkeyup = validatePassword;	
</script>
  </fieldset>
</form:form>
</div>
 
</div>
	

<%@include file="footer.jsp"%>
</body>

</html>