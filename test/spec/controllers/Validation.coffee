'use strict'

describe 'Controller: ValidationCtrl', () ->

  # load the controller's module
  beforeEach module 'angularformApp'

  ValidationCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ValidationCtrl = $controller 'ValidationCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
