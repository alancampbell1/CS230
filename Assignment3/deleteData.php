 <?php



$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Dublin_Core_Metadata_Specification";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$myDeletedID = $_POST["deletedID"];

// sql to delete a record
$sql = "DELETE FROM eBook_MetaData WHERE ID= $myDeletedID";

if (mysqli_query($conn, $sql)) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);


header('Location: http://' . $_SERVER['HTTP_HOST'] . '/Assignment3/homepage.php?viewData=View+Table');
exit;
?>
