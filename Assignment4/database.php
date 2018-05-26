<?php

/*
	This PHP file connects to the Database for the questions and answers to be pulled into the PHP files
*/

//Create connection
$db_host = 'localhost';
$db_name = 'CS230_Quiz';
$db_user = 'root';
$db_pass = '';

//Create mySQLi object
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);

//Error Handler
if($mysqli->connect_error){
	printf("Connection failed: %s\n", $mysqli->connect_error);
	exit();
}

?>