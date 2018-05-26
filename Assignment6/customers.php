<?php
// Create the connection to the Database
$conn = mysqli_connect("localhost", "root", "", "assignment6");

// Check connection to make sure nothing bad happened
if (!$conn)
    die("Connection failed: " . mysqli_connect_error());

mysqli_set_charset($conn,'utf8');

//Make the SQL Statement
$sql = "SELECT * FROM customers;";

//Store the query in a PHP variable
$result = $conn->query($sql);

//Loop through the database and encode it to JSON
if ($result->num_rows > 0) {
    $records = array();
    while($row = $result->fetch_assoc())
        array_push($records, array("name" => $row["name"], "country" => $row["country"]));
    $response = array("records" => $records);
    echo json_encode($response);
}

else
    echo "No results found";

//Close Connection once complete
$conn->close();
?>