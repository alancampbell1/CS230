var app = angular.module('myApp', []);
app.run(function($rootScope) {
    $rootScope.color = 'blue';
});
app.controller('myCtrl', function($scope) {
    $scope.color = "red";
});

/*
	RootScope:
	All applications have a $rootScope which is created on a HTML element that contains the ng-app directive.
	This is available through the entire application.
	If a variable has the same name in the current scope and root scope, the application uses the one in the current scope. 

	In the following example we set the 'rootScope' of 'color' to blue. We then change it to red in the controller. However,
	when we exit the controller and reference the 'rootScope' of 'color', it goes back to blue

 */