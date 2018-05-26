var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.name = "John Doe";
});

/*
  Another example binding the value in an input field to a variable in AngularJS. This example is two way binding.
  In this example, the input field is linked to the variable in the header and changes with user input
 */