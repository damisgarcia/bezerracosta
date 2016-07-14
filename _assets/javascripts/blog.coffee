BlogCtrl = ($scope, $http, $sce)->
  uri = "https://public-api.wordpress.com/rest/v1/sites/bezerracostateste.wordpress.com/posts?callback=JSON_CALLBACK"

  $scope.parseContent = (html)->
    $sce.trustAsHtml(html)

  $http.jsonp(uri).success (data)->
    $scope.posts = data.posts
    console.log(data)
#

BlogCtrl.$inject = ['$scope', '$http', '$sce']

angular.module("bezerracostaApp").controller('BlogCtrl', BlogCtrl)
