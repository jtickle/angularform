'use strict';

FLOAT_REGEXP = /^\-?\d+((\.|\,)\d+)?$/
angular.module('angularformApp')
  .directive 'float', () ->
    require: 'ngModel'
    link: (scope, element, attrs, ctrl) ->
      ctrl.$parsers.unshift (viewValue) ->
        if FLOAT_REGEXP.test viwewValue
          ctrl.$setValidity 'float', true
          parseFloat viewValue.replace ',', '.'
        else
          ctrl.$setValidity 'float', false
          undefined
