var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.firstName = "John";
    $scope.lastName = "Doe";
});

/*
	Model - Model represents an Object carrying data. It can have logic to update controller if its data changes

	View - View represents the visualisation of the data that the model contains.

	Controller - Controller acts on both the model and the view. It controls the data flow into the model object and
	updates the view whenever data changes. It keeps the view and model separate.

	
	In the following example, we have a control defined as 'ng-controller'. This is separate from 'ng-app' which defines the 
	AngularJS application.
	Remember, a controller is a JavaScript object. In this case it is called 'myCtrl'.
	We can invoke the controller using the '$scope' operator.
	In this case the controller creates two properties/variables in the scope, firstname and lastname
	It is then binded to the input fields using 'ng-model'.

	
 */