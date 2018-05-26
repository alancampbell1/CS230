var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.firstname = "John";
    $scope.lastname = "Doe";    
});

/*
 * Data binding in AngularJS is synchronous between the model and the view.
 * AngularJS applications usually have a data model. The data model is a collection of data available to the application  
 * In this example, its firstname and lastname
 * 
 * The HTML container where the application is displayed is called the view.
 * The view has access to the model, i.e. the JS file, and can have different ways of displaying the data.
   This example uses ng-bind directive to bind the innerHTML of the element, i.e. the firstname in the HTML, 
   to the model property, i.e. firstname in JS.


   This can also be achieved using {{ firstname }}:
	
   <p>First Name: {{firstname}}</p>

   Or ng-model:

   <input ng-model="firstname">

 */