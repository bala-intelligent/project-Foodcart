<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
$('.checkbox').click(function() {
    $(this).siblings('input:checkbox').prop('checked', false);
});
</script>

</head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>


<body >

 <form:form commandName="order" class="form-horizontal">
     <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Payment Type!</h1>

                    <p>Select any one of the payment method for deliver.</p>
                </div>
            </div>
        </section>


<section >

CASH ON DELIVERY: <input type="checkbox"  class="checkbox" ng-model="myVar">

ONLINE PAYMENT: <input type="checkbox" class="checkbox" ng-model="myVar1">


<div class="container" ng-show="myVar1 ">
  <div class="row">
    <div class="span12">
<!--       <form commandName="order" class="form-horizontal span6"> -->
        <fieldset>
          <legend>Payment</legend>
       
          <div class="control-group">
            <label class="control-label">Card Holder's Name</label>
            <div class="controls">
              <input type="text" class="input-block-level" pattern="\w+ \w+.*" title="Fill your first and last name" required>
            </div>
          </div>
       
          <div class="control-group">
            <label class="control-label">Card Number</label>
            <div class="controls">
              <div class="row-fluid">
                <div class="span3 ">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="First four digits" required>
                </div>
                <div class="span3  ">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Second four digits" required>
                </div>
                <div class="span3  ">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Third four digits" required>
                </div>
                <div class="span3 ">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Fourth four digits" required>
                </div>
              </div>
            </div>
          </div>
          
          <br/>
          
          <br/>
       
          <div class="control-group">
            <label class="control-label">Card Expiry Date</label>
            <div class="controls">
              <div class="row-fluid">
                <div class="span9">
                  <select class="input-block-level">
                    <option>January</option>
                    <option>february</option>
                    <option>March</option>
                    <option>April</option>
                    <option>May</option>
                    <option>June</option>
                    <option>July</option>
                    <option>August</option>
                    <option>September</option>
                    <option>October</option>
                    <option>November</option>
                    <option>December</option>
                  </select>
                </div>
                <div class="span3">
                  <select class="input-block-level">
                    <option>2013</option>
                    <option>2014</option>
                    <option>2015</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
          
          <br/>
          
          <br/>
       
          <div class="control-group">
            <label class="control-label">Card CVV</label>
            <div class="controls">
              <div class="row-fluid">
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required>
                </div>
                <div class="span8">
                  <!-- screenshot may be here -->
                </div>
              </div>
            </div>
          </div>
          
          <br/>
          
          <br/>
          
         
          
          <br/>
          
          <br/>
         
        </fieldset>
<!--       </form> -->
    </div>
  </div>
</div>
<div class="container"  ng-show="myVar">
          
          <p>Payment must be paid on product delivery.</p>
          </div>
          <input type="hidden" name="_flowExecutionKey" />
          <br/>
          
          <br/>
          </section>
          
          
                        <button class="btn btn-default" value="OrderConfirmation" name="_eventId_backToOrderConfirmation">Back</button>

                         
                         
                        <button type="submit" value="Submit" class="btn btn-default"  name="_eventId_orderProcessed" >Submit</button> 
                       
                       
                       <button class="btn btn-default" value="cancel" name="_eventId_cancel">Cancel</button>
          
          
          
          </form:form>
          
          
                   
          
 

<%@ include file="footer.jsp" %>
</body>
</html>