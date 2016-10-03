var productsApp=angular.module("productsApp",[]);

productsApp.controller("productsCtrl",function($scope,$http){
	
	
	productsApp.filter('unique', function() {
	    return function(input, key) {
	        var unique = {};
	        var uniqueList = [];
	        for(var i = 0; i < input.length; i++){
	            if(typeof unique[input[i][key]] == "undefined"){
	                unique[input[i][key]] = "";
	                uniqueList.push(input[i]);
	            }
	        }
	        return uniqueList;
	    };
	});
	
	$http.get('/foodcart/viewallcart').success(function (data,status,headers,config){
        $scope.foodproductsList = data;
        console.log("done");
    }).error(function(data,status){
    	alert("couldn't retrieve");
    })
	
	
	
    $http.get('/foodcart/veg').success(function (data,status,headers,config){
        $scope.foodproductsList = data;
        console.log("veg");
    }).error(function(data,status){
    	alert("couldn't retrieve");
    })
	
	
	
    $http.get('/foodcart/nonveg').success(function (data,status,headers,config){
        $scope.foodproductsList = data;
        console.log("nonveg");
    }).error(function(data,status){
    	alert("couldn't retrieve");
    })
	
	
    
    $http.get('/foodcart/snack').success(function (data,status,headers,config){
        $scope.foodproductsList = data;
        console.log("snack");
    }).error(function(data,status){
    	alert("couldn't retrieve");
    })
    
    
    
    $http.get('/foodcart/bev').success(function (data,status,headers,config){
        $scope.foodproductsList = data;
        console.log("bev");
    }).error(function(data,status){
    	alert("couldn't retrieve");
    })
    
});