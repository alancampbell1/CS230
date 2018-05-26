var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.firstname = "John";
    $scope.changeName = function() {
        $scope.firstname = "Nelly";
    }
});

/*
	Applications in AngularJS are controlled by controllers. Due to the synchronization between the model and
	the view, the controller can be complete separate from the view.
	
	In this example, we use a controller to change the text displayed in the header that is linked to the variable
	in the AngularJS applcation by clicking on it.

 */