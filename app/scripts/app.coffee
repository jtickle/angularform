'use strict'

angular.module('angularformApp', [])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/simple',
        templateUrl: 'views/simple.html'
        controller: 'SimpleFormCtrl'
      .when '/validation',
        templateUrl: 'views/validation.html'
        controller: 'ValidationCtrl'
      .otherwise
        redirectTo: '/'
  ]
