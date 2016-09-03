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

    $scope.search = (keywords) ->
      $.post '/search', { term: keywords }, (data) ->
        console.log(data)
])
