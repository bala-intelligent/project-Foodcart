<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Cart</h1>
					<p>All the selected products in your shopping cart</p>
				</div>
			</div>
		</section>

		<section class="container" ng-app="cartApp">

			<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">

				<div>
					<a class="btn btn-danger pull-left" ng-click="clearCart()"><span
						class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
						 <a href="<c:url value="/order/${cartId}" />"
						class="btn btn-success pull-right"><span
						class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
				</div>

				<br />
				<br />
				<br />

				<table class="table table-hover">
					<tr>
					   
						<th>Product</th>
						<th>Unit Price</th>
						<th>Quantity</th>
						<th>Quantity need</th>
						<th>Price</th>
						<th>Action</th>
					</tr>
					 <tr ng-hide="calGrandTotal () > 0" >
                    <td class="tdCenter" colspan="4">
                        Your cart is empty.
                    </td>
                </tr>
					<tr ng-repeat="item in cart.cartItems">
					   
						<td>{{item.foodproducts.productname}}</td>
						<td>{{item.foodproducts.productprice}}</td>
						<td>{{item.quantity}}</td>
						<td class="tdCenter">
                      <div class="input-append">
                        <!-- use type=tel instead of  to prevent spinners -->
                        <input
                            class="span3 text-center" type="tel" 
                            ng-model="item.quantity" 
                            ng-change="saveItems()" />
                        <button 
                            class="btn btn-success" type="button" 
                            ng-disabled="item.quantity >= 1000"
                            ng-click="addItem(, +1)">+</button>
                        <button 
                            class="btn btn-inverse" type="button" 
                            ng-disabled="item.quantity <= 1"
                            ng-click="addItem(, -1)">-</button>
                      </div>
                    </td>
						<td>{{item.totalPrice}}</td>
						<td><a href="#" class="label label-danger"
							ng-click="removeFromCart(item.foodproducts.productId)"><span
								class="glyphicon glyphicon-remove"></span>remove</a></td>
 					</tr> 
 					<tr> 
						<th></th>
						<th></th>
						<th>Grand Total</th>
						<th>{{calGrandTotal()}}</th>
						<th></th>
					</tr>
				</table>
 <button class="btn" onclick="javascript:history.back()">Back</button>
				<a href="<c:url value="/viewall" />"
					class="btn btn-default">Continue Shopping</a>
			</div>
		</section>
</div>
</div>
		<!-- My -->
		<script src="<c:url value="/resources/js/controller.js" /> "></script>

		<%@ include file="footer.jsp"%>