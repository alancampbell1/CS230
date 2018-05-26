var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope) {
    $scope.names = ["Emil", "Tobias", "Linus"];
});

/*
   This example details the 'ng-repeat' directive. It loops through each iteration in names and prints it to the screen.

   Know Your Scope:
   It is important to know which scope you are dealing with at all times. This is due to certain HTML docs only having access
   to specific scopes.

*/