
var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function(){
       $http.get('/foodcart/rest/cart/' + $scope.cartId).success(function (data){
           $scope.cart = data;
           setTimeout(function(){ location.reload(); },100000);
       }).error(function(data,status){
       })
    };
    
    

    $scope.clearCart = function(){
    	alert("cleared");
        $http.delete('/foodcart/rest/cart/' + $scope.cartId).success($scope.refreshCart());
        
        
    };
   
    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId){
    	alert('hi'); 
        $http.put('/foodcart/rest/cart/add/' + productId).success(function (){
            alert('Product successfully added to the cart!');
        }).error(function (data,status){
            alert('Product is not added to the cart!');
            console.log("bye")
        })
    };
    
    $scope.quantity=function(productId)
    {
    	
    };
 
    $scope.removeFromCart = function(productId){
    	alert("delete?");
        $http.put('/foodcart/rest/cart/remove/' + productId).success(function(data){
           $scope.refreshCart();
        });
    };
    
    $scope.saveItems= function()
    {
    	$http.put('/foodcart/rest/cart/quantity/' + productId).success(function(data){
    		
    	});
    };

    $scope.calGrandTotal = function(){
        var grandTotal = 0;
        for (var i = 0; i < $scope.cart.cartItems.length; i++)
        {
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }
    
    $scope.calCountTotal = function(sku){
        var count = 0;
        for (var i = 0; i < $scope.cart.cartItems.length; i++)
        {
        	var item = this.cart.cartItems[i];
        	 if (sku == null || item.sku == sku) {
                 count += this.toNumber(item.quantity);
             }
          
        }

        return count;
    }
});

