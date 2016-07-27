BlogCtrl = ($scope, $http, $sce)->
  uri = "https://public-api.wordpress.com/rest/v1/sites/bezerracostateste.wordpress.com/posts?callback=JSON_CALLBACK"

  $scope.loading = true

  $scope.parseContent = (html)->
    $sce.trustAsHtml(html)

  $http.jsonp(uri).success (data)->
    $scope.posts = data.posts
    $scope.loading = false
#

BlogCtrl.$inject = ['$scope', '$http', '$sce']

angular.module("bezerracostaApp").controller('BlogCtrl', BlogCtrl)
