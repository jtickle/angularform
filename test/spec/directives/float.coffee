'use strict'

describe 'Directive: float', () ->

  # load the directive's module
  beforeEach module 'angularformApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<float></float>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the float directive'
