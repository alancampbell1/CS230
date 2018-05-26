var app = angular.module("myApp", []);            //Module created called myApp
app.directive("w3TestDirective", function() {       //directive created called w3TestDirective
    return {                        //This directive returns a piece of text stored in a template
        template : "I was made in a directive constructor!"
    };
});