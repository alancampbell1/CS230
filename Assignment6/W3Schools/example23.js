var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.carname = "Volvo";
});

/*
 * The scope is the binding part between the HTML (view) and the JavaScript (controller).
   The scope is an object with the available properties and methods.
   The scope is available for both the view and the controller.
   
   When you create a controller in AngularJS, you pass the $scope object as an argument. 
   When you add properties to the $scope object in the controller, you can access them in the view (i.e. HTML).
   In the view you simple refer to the property name, e.g. {{carname}}

   Remember, an AngularJS application is made up of three core features:
   View - basically the HTML
   Model - The data available for the current view
   Controller - The JavaScript function that makes/changes/removes/controls the data.

   The scope is a JavaScript object with properties and methods which are both available to the view and controller.
 */