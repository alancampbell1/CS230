var app = angular.module('myApp', []);
app.controller('personCtrl', function($scope) {
    $scope.firstName = "John";
    $scope.lastName = "Doe";
    $scope.fullName = function() {
        return $scope.firstName + " " + $scope.lastName;
    };
});

/*
	A controller can also contain methods/functions. 
	In the following function 'fullName()', it takes the firstname and lastname variables and concatenates them.
	This is called from the HTML file under the function name, fullName().
	
 */