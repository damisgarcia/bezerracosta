ContactCtrl = ($scope, $http)->
  url = "https://getsimpleform.com/messages.json?form_api_token=af34ac679dd5b4588a34ccd88bd6bae0"
  form = {}

  onSendSuccess = (response)->
    console.log "Sucesso", response

  onSendFail = (error)->
    console.log "Error", error

  $scope.send = (e)->
    e.preventDefault()
    form.Nome = $scope.name
    form.Email = $scope.email
    form.Telefone = $scope.email
    form.Mensagem = $scope.message
    $http.post(url, form).then onSendSuccess, onSendFail
  #
#

ContactCtrl.$inject = ['$scope', '$http']

angular.module("bezerracostaApp").controller('ContactCtrl', ContactCtrl)
