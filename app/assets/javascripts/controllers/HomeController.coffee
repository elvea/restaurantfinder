controllers = angular.module('controllers')

controllers.controller("HomeController", [ '$scope',
  ($scope)->

    $scope.restaurants = []

    $scope.search = (keywords) ->
      $.post '/search', { term: keywords }, (data) ->

        # Use lodash to pick 5 random so you'll get slightly different results each time
        $scope.restaurants = _.sampleSize(data['businesses'], 5)
        $scope.keywords = ""

        $scope.$apply()
])
