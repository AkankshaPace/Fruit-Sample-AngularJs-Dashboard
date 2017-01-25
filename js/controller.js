angular.module('controller',[])

.controller("dbController",['$scope','$http', function($scope,$http){
	$scope.active = 'Monthly';
    $scope.setActive = function(type) {
        $scope.active = type;
    };

    $http({
		method: 'POST', 
		url: 'assets/getData.php',
		params: {
		    var: 'Fruits'
		},
		headers: {
		    'Content-Type': 'application/x-www-form-urlencoded'
		}
	})
	.success(function(data){
		$scope.dbFruit = data;	
	})
	.error(function(err){
		console.log(err);
	});

	$http({
		method: 'POST', 
		url: 'assets/getData.php',
		params: {
		    var: 'FruitCls'
		},
		headers: {
		    'Content-Type': 'application/x-www-form-urlencoded'
		}
	})
	.success(function(data){
		$scope.dbFruitCls = data;	
	})
	.error(function(err){
		console.log(err);
	});

	$http({
		method: 'POST', 
		url: 'assets/getData.php',
		params: {
		    var: 'Countries'
		},
		headers: {
		    'Content-Type': 'application/x-www-form-urlencoded'
		}
	})
	.success(function(data){
		$scope.dbCountries = data;	
	})
	.error(function(err){
		console.log(err);
	});

	$http({
		method: 'POST', 
		url: 'assets/getData.php',
		params: {
		    var: 'Region'
		},
		headers: {
		    'Content-Type': 'application/x-www-form-urlencoded'
		}
	})
	.success(function(data){
		$scope.dbRegion = data;	
	})
	.error(function(err){
		console.log(err);
	});


	$scope.fruitCheckboxChanged = function(){
		if(checkSelectedFruitCls().length > 0){
			fruitClsSelected = checkSelectedFruitCls();
			$http({
				method: 'POST', 
				url: 'assets/getData.php',
				params: {
					var: 'Fruits',
				    fruitClassification: Array(fruitClsSelected)
				},
				headers: {
				    'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
			.success(function(data){
				$scope.dbFruit = data;	
			})
			.error(function(err){
				console.log(err);
			});

		}
		else{
			 $http({
				method: 'POST', 
				url: 'assets/getData.php',
				params: {
				    var: 'Fruits'
				},
				headers: {
				    'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
			.success(function(data){
				$scope.dbFruit = data;	
			})
			.error(function(err){
				console.log(err);
			});
		}
	}

	$scope.regionCheckboxChanged = function(){
		if(checkSelectedRegion().length > 0){
			regionSelected = checkSelectedRegion();
			$http({
				method: 'POST', 
				url: 'assets/getData.php',
				params: {
					var: 'Countries',
				    region: Array(regionSelected)
				},
				headers: {
				    'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
			.success(function(data){
				$scope.dbCountries = data;
			})
			.error(function(err){
				console.log(err);
			});

		}
		else{
			$http({
				method: 'POST', 
				url: 'assets/getData.php',
				params: {
				    var: 'Countries'
				},
				headers: {
				    'Content-Type': 'application/x-www-form-urlencoded'
				}
			})
			.success(function(data){
				$scope.dbCountries = data;	
			})
			.error(function(err){
				console.log(err);
			});
		}
	}
	$scope.checkAllCountry = function() {
	    angular.forEach($scope.dbCountries, function(d) {
	      d.select = $scope.selectAllCountry;
	    });
	};
	
	$scope.checkAllRegion = function() {
	    angular.forEach($scope.dbRegion, function(re) {
	      re.select = $scope.selectAllRegion;
	    });
	};


	$scope.checkAllFruit = function() {
	    angular.forEach($scope.dbFruit, function(f) {
	      f.select = $scope.selectAllFruit;
	    });
	};

	$scope.checkAllFruitCls = function() {
	    angular.forEach($scope.dbFruitCls, function(fc) {
	      fc.select = $scope.selectAllFruitCls;
	    });
	};

	function unCheckAllFruit() {
	    angular.forEach($scope.dbFruit, function(f) {
	      f.select = false;
	    });
	};

	function unCheckAllFruitCls() {
	    angular.forEach($scope.dbFruitCls, function(f) {
	      f.select = false;
	    });
	};

	function unCheckAllRegion() {
	    angular.forEach($scope.dbRegion, function(f) {
	      f.select = false;
	    });
	};

	function unCheckAllCountry() {
	    angular.forEach($scope.dbCountries, function(f) {
	      f.select = false;
	    });
	};

	$scope.unCheckAll= function(){
		unCheckAllFruit();
		unCheckAllFruitCls();
		unCheckAllRegion();
		unCheckAllCountry();
	};

	function checkSelectedRegion(){
	 	var selectedRegion = angular.forEach($scope.dbRegion, function(re) {
	     if(re.select){
	      	return re;
	    	 }
	    });
	    var region = [];
	    var i=0;
	    var regions = angular.forEach(selectedRegion, function(re){
	    	if(re.select){
	    		region[i++] = re.continent;
	    	}
	    	
	    });
	    return region;
	    
	}

	function checkSelectedCountry(){
	 		var selectedCountry = angular.forEach($scope.dbCountries, function(d) {
	      if(d.select){
	      	return d;
	      }
	    });
	    var country = [];
	    var i=0;
	    var countries = angular.forEach(selectedCountry, function(d){
	    	if(d.select){
	    		country[i++] = d.countryName;
	    	}
	    });
	    return country;
	}  

	function checkSelectedFruit(){
	 	var selectedFruit = angular.forEach($scope.dbFruit, function(f) {
		    if(f.select){
		      	return f;
		     }
	    });
	    var fruit = [];
	    var i=0;
	    var fruits = angular.forEach(selectedFruit, function(f){
	    	if(f.select){
	    		fruit[i++] = f.fruitName;
	    	}
	    });
	    return fruit;
	}  

	function checkSelectedFruitCls(){
	 	var selectedFruitCls = angular.forEach($scope.dbFruitCls, function(fc) {
		    if(fc.select){
		      	return fc;
		     }
	    });
	    var fruitCls = [];
	    var i=0;
	    var fruitsCls = angular.forEach(selectedFruitCls, function(fc){
	    	if(fc.select){
	    		fruitCls[i++] = fc.fruitClassification;
	    	}
	    });
	    return fruitCls;
	}  

	$scope.checkSelected= function(){
		SRegion = checkSelectedRegion();
		SCountry = checkSelectedCountry();
  	 	SFruit = checkSelectedFruit();
  	 	SFruitCls = checkSelectedFruitCls();
  	 	$http({
			method: 'POST', 
			url: 'assets/getData.php',
			params: {
				var: 'Quantity',
			    region: Array(SRegion),
			    country: Array(SCountry),
			    fruit: Array(SFruit),
			    fruitClassification: Array(SFruitCls)
			},
			headers: {
			    'Content-Type': 'application/x-www-form-urlencoded'
			}
		})
		.success(function(data){
			$scope.chartValue = data;	
			$scope.chartlist = [];
			var cData = [];
			cMon = [];
		    var j=0;
		    if( $scope.active == 'Monthly'){
		    	for (var i=0; i< Object.keys(data).length; i++){
			        cData[i] = data[i].quantity;
			        cMon[i] = data[i].mon;
				}
		    }
		    else  if( $scope.active == 'Bi-Monthly'){
		    	var j=0;
		    	for (var i=0; i< Object.keys(data).length; i=i+2){
			        cData[j] = parseInt(data[i].quantity, 10) +parseInt(data[i+1].quantity, 10);
			        cMon[j++] = data[i].mon;
				}
		    }
		    else if( $scope.active == 'Quaterly'){
		    	var j=0;
		    	for (var i=0; i< Object.keys(data).length; i=i+4){
			        cData[j] = parseInt(data[i].quantity, 10) +parseInt(data[i+1].quantity, 10)+parseInt(data[i+2].quantity, 10) +parseInt(data[i+3].quantity, 10);
			        cMon[j++] = data[i].mon;
				}
		    }
			
		    var cDataN = cData.map(Number);
				function chardata(){
				        $scope.chartConfig = {
				            // options: {
				                chart: {
					            type: 'column'
					        },
				            // },
				             xAxis: {
			                    categories: cMon,
			                    title:{
			                    	text:  $scope.active
			                    }
			                },
			                plotOptions: {
					            series: {
					                borderRadius: 5
					            }
					        },
			                yAxis: {
			                	title:{
			                		text: 'Quantity'
			                	}
			                },
				            series: [{
				                data: cDataN
				            }],
				            title: {
					            text: 'Quantity of Produce'
					        },
					        legend: {
							    enabled: false
							}

				        }
				    $scope.chartlist.push($scope.chartConfig);
				}
				chardata();
		})
		.error(function(err){
			console.log(err);
		});


		$http({
			method: 'POST', 
			url: 'assets/getData.php',
			params: {
				var: 'Revenue',
			    region: Array(SRegion),
			    country: Array(SCountry),
			    fruit: Array(SFruit),
			    fruitClassification: Array(SFruitCls)
			},
			headers: {
			    'Content-Type': 'application/x-www-form-urlencoded'
			}
		})
		.success(function(data){
			$scope.chartValue2 = data;	
			$scope.chartlist2 = [];
			var cData2 = [];
			cMon2 = [];
		    var j=0;
		    if( $scope.active == 'Monthly'){
		    	for (var i=0; i< Object.keys(data).length; i++){
			        cData2[i] = data[i].revenue;
			        cMon2[i] = data[i].mon;
				}
		    }
		    else  if( $scope.active == 'Bi-Monthly'){
		    	var j=0;
		    	for (var i=0; i< Object.keys(data).length; i=i+2){
			        cData2[j] = parseInt(data[i].revenue, 10) +parseInt(data[i+1].revenue, 10);
			        cMon2[j++] = data[i].mon;
				}
		    }
		    else if( $scope.active == 'Quaterly'){
		    	var j=0;
		    	for (var i=0; i< Object.keys(data).length; i=i+4){
			        cData2[j] = parseInt(data[i].revenue, 10) +parseInt(data[i+1].revenue, 10)+parseInt(data[i+2].revenue, 10) +parseInt(data[i+3].revenue, 10);
			        cMon2[j++] = data[i].mon;
				}
		    }
			
		    var cDataN2 = cData2.map(Number);
				function chardata2(){
				        $scope.chartConfig2 = {
				            // options: {
				                chart: {
					            type: 'column'
					        },
				            // },
				             xAxis: {
			                    categories: cMon2,
			                    title:{
			                    	text:  $scope.active
			                    }
			                },
			                plotOptions: {
					            series: {
					                borderRadius: 5
					            }
					        },
			                yAxis: {
			                	title:{
			                		text: 'Revenue'
			                	}
			                },
				            series: [{
				                data: cDataN2
				            }],
				            title: {
					            text: 'Profit/Loss'
					        },
					        legend: {
							    enabled: false
							},
							setSize:{
								width: 300,
								height: 300
							}
				        }
				    $scope.chartlist2.push($scope.chartConfig2);
				}
				chardata2();
		})
		.error(function(err){
			console.log(err);
		});

	};

}]);
