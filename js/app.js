	var fruit = angular.module('fruit', ['ngRoute', 'controller', 'highcharts-ng']);
	// configuring routes

	fruit.config(function($routeProvider) {
		$routeProvider

			// route for the product page
			.when('/', {
				templateUrl : 'views/filter.html',
				controller  : 'dbController'
			})

			.otherwise({
		        templateUrl: 'views/404.html'
		    });
	});
