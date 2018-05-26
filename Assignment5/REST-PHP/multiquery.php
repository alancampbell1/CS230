<?php
include 'conn.php';
//Insert Multyple record into database

$name = $_POST['name'];
$email = $_POST['email'];
$status = $_POST['status'];
$name1 = $_POST['name1'];
$email1 = $_POST['email1'];
$status1 = $_POST['status1'];
$name2 = $_POST['name2'];
$email2 = $_POST['email2'];
$status2 = $_POST['status2'];

$query = "INSERT INTO `cs230`.`user` (`name`, `email`, `status`) VALUES ('$name', '$email', '$status');";
$query .= "INSERT INTO `cs230`.`user` (`name`, `email`, `status`) VALUES ('$name1', '$email1', '$status1');";
$query .= "INSERT INTO `cs230`.`user` (`name`, `email`, `status`) VALUES ('$name2', '$email2', '$status2');";

 if ($connection->multi_query($query)) {
 $msg = array("status" =>1 , "msg" => "All Records Inserted successfully");
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($connention);
}

$json = $msg;

header('content-type: application/json');
echo json_encode($json);

@mysqli_close($conn);