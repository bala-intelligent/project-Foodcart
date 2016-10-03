<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>


<div class="container-wrapper">
	
		<div class="page-header">
			<h1>Register Customer</h1>

			<p class="lead">Please fill in your information below:</p>
		</div>

		<form:form action="${pageContext.request.contextPath}/registers"
			method="post" commandName="customer">
     <div class="container">
			<h3>Basic Info:</h3>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="name">Name</label>
				<div class="col-lg-12">
				<form:errors path="customerName" cssStyle="color: #ff0000" />
				<form:input path="customerName" id="name" class="form-Control input-md" />
				</div>
			</div>
			
			

			<div class="form-group">
				<label class="col-lg-12 control-label" for="email">Email</label> <span style="color: #ff0000">${emailMsg}</span>
				<div class="col-lg-12">
				<form:errors path="customerEmail" cssStyle="color: #ff0000" />
				<form:input path="customerEmail" id="email" class="form-control input-md" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="phone">Phone</label>
				<div class="col-lg-12">
				<form:input path="customerPhone" id="phone" class="form-Control input-md" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="username">Username</label> <span style="color: #ff0000">${usernameMsg}</span>
				<div class="col-lg-12">
				<form:errors path="username" cssStyle="color: #ff0000" />
				<form:input path="username" id="username" class="form-Control input-md" />
				</div>
			</div>

             <div class="form-group">
				<label class="col-lg-12 control-label" for="password">Password</label>
				<div class="col-lg-12">
				<form:errors path="password" cssStyle="color: #ff0000" />
				<form:password path="password" id="password" class="form-Control" />
			</div>
			</div>
			
           <br/>

			<br />

			<h3>Billing Address:</h3>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="billingStreet">Street Name</label>
				<div class="col-lg-12">
				<form:input path="billingAddress.streetName" id="billingStreet" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="billingApartmentNumber">Apartment Number</label>
				<div class="col-lg-12">
				<form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="billingCity">City</label>
				<div class="col-lg-12">
				<form:input path="billingAddress.city" id="billingCity" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="billingState">State</label>
				<div class="col-lg-12">
				<form:input path="billingAddress.state" id="billingState" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="billingCountry">Country</label>
				<div class="col-lg-12">
				<form:input path="billingAddress.country" id="billingCountry" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="billingZip">Zipcode</label>
				<div class="col-lg-12">
				<form:input path="billingAddress.zipCode" id="billingZip" class="form-Control input-md" />
					</div>
			</div>

			<br />
			
			<br/>

			<h3>Shipping Address:</h3>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="shippingStreet">Street Name</label>
				<div class="col-lg-12">
				<form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="shippingApartmentNumber">Apartment Number</label>
				<div class="col-lg-12">
				<form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="shippingCity">City</label>
				<div class="col-lg-12">
				<form:input path="shippingAddress.city" id="shippingCity" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="shippingState">State</label>
				<div class="col-lg-12">
				<form:input path="shippingAddress.state" id="shippingState" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="shippingCountry">Country</label>
				<div class="col-lg-12">
				<form:input path="shippingAddress.country" id="shippingCountry" class="form-Control input-md" />
					</div>
			</div>

			<div class="form-group">
				<label class="col-lg-12 control-label" for="shippingZip">Zipcode</label>
				<div class="col-lg-12">
				<form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control input-md" />
					</div>
			</div>

			<br />
			
			
			<br />

			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
      </div>
		</form:form>
</div>

		<%@ include file="footer.jsp"%>