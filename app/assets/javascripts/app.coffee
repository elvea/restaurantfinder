restaurantfinder = angular.module('restaurantfinder',[
  'templates',
  'ngRoute',
  'controllers',
])

restaurantfinder.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'HomeController'
      )
])

controllers = angular.module('controllers',[])
