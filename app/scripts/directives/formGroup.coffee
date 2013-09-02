'use strict';

angular.module('angularformApp')
  .directive 'formGroup', ->
    restrict: 'C'
    link: (scope, element, attrs) ->
      form = $(element.parents('form')[0]).attr 'name'

      reJiggerClass = () ->
        element.removeClass 'has-error'
        for el in element.find 'input,textarea,select'
          $input = $(el)
          name = $input.attr 'name'
          inputScope = scope[form][name]

          if inputScope.$erroneous
            element.addClass 'has-error'

      setupBlur = ($input) ->
        name = $input.attr 'name'
        inputScope = scope[form][name]
        inputScopeInvalidExpr = form + '.' + name + '.$invalid'
        inputScopeErroneousExpr = form + '.' + name + '.$erroneous'

        # We don't want to bug the user until they have left the field
        $input.blur () ->
          scope.$apply () ->
            if inputScope.$dirty and inputScope.$invalid
              inputScope.$erroneous = true
            else
              inputScope.$erroneous = false

        # But, if they fix the error while typing, we can reflect that immediately
        scope.$watch inputScopeInvalidExpr, (invalid) ->
          if not invalid
            inputScope.$erroneous = false

        scope.$watch inputScopeErroneousExpr, (erroneous) ->
          reJiggerClass()


      for el in element.find 'input,textarea,select'
        setupBlur $(el)
