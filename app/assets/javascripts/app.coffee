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
controllers.controller("HomeController", [ '$scope',
  ($scope)->

    $scope.restaurants = []

    $scope.search = (keywords) ->
      $.post '/search', { term: keywords }, (data) ->
        $scope.restaurants = data['businesses']
        $scope.keywords = ""
        $scope.$apply()
])
