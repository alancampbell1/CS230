var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.name = "John Doe";
});

/*
 * Notes on Angular Model:
 * The ng-model directive binds the value of HTML controls (input, select, textarea) to application data
 * Basically, in AngularJS you can bind the value of an input field to a variable in AngularJS
 * In this example, John Doe is the default name but it can be changed by the user
 */