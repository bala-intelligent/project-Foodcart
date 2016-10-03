<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
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
  body {
    background: url("<c:url value="/resources/image/welcome.jpg"/>") no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-position: 50% 50%;
    font-family: 'Open Sans', sans-serif;
}
  
</style>
</head>
<body>
<div class="container">
			<fieldset>
				<legend>BK home page</legend>
				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "home" is mapped in spring mvc controller-->
				<a href="foodproducts" class="btn btn-danger">Home</a>
				<br /><br />
				<p class="text danger"><!-- display the userId just entered -->
				Welcome ${registration.username}</p>
				<br/>
			</fieldset>
		</div>
</body>
</html>