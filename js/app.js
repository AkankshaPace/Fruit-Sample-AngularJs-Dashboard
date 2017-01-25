	var fruit = angular.module('fruit', ['ngRoute', 'controller', 'highcharts-ng']);

	fruit.config(function($routeProvider) {
		$routeProvider

			.when('/', {
				templateUrl : 'views/filter.html',
				controller  : 'dbController'
			})

			.otherwise({
		        templateUrl: 'views/404.html'
		    });
	});
