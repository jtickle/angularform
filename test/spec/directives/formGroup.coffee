'use strict'

describe 'Directive: formGroup', () ->

  # load the directive's module
  beforeEach module 'angularformApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<form-group></form-group>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the formGroup directive'
