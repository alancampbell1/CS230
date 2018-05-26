<?php include 'database.php'; ?>
<?php session_start(); ?>

<?php

$_SESSION['score'] = 0;
$_SESSION['questionsAnswered'] = 1;


/*
 * Get total number of questions
 */

$query = "SELECT * FROM questions";

//GET result
$results = $mysqli->query($query) or die($mysqli->error.__LINE__);

$total = $results->num_rows;
$_SESSION['userScore'] = 0;
$_SESSION['OverallUser'] = '';
if (isset($_POST["ExistingName"])) {
    $_SESSION['ExistingName'] = $_POST['ExistingName'];
	//echo $_SESSION['ExistingName'];
	echo 'The current user is ' . $_SESSION['ExistingName']; echo '<br>';
	//echo "Accessed existing"; 

	//Get existing user and score

	$str = file_get_contents('data.js');
	$json = json_decode($str, true);

	$increment = 0;
	while(true){
		if($json[$increment]['Username'] == $_SESSION['ExistingName']){
			//echo 'Found ' . $_SESSION['ExistingName'];
			$_SESSION['userScore'] = $json[$increment]['Score'];
			break;
		}
		$increment++;
	}
	echo "Your current top score is " . $_SESSION['userScore'];
	$_SESSION['OverallUser'] = $_SESSION['ExistingName'];

}

else if (isset($_POST["NewName"])) {
    $_SESSION['NewName'] = $_POST['NewName'];
	//echo $_SESSION['NewName'];
	echo 'The current user is ' . $_SESSION['NewName']; echo '<br>';
	//echo "Accessed new";
	echo "Your current top score is " . $_SESSION['userScore'];

	$formdata = array(
	      'Username'=> $_POST['NewName'],
	      'Score'=> 0
	   );

	$myFile = "data.js";
	$arr_data = array();

	//Get data from existing json file
	$jsondata = file_get_contents($myFile);

	// converts json data into array
	$arr_data = json_decode($jsondata, true);

	// Push user data to array
	   array_push($arr_data, $formdata);

       //Convert updated array to JSON
	   $jsondata = json_encode($arr_data, JSON_PRETTY_PRINT);
	   
	   //write json data into data.json file
	   file_put_contents($myFile, $jsondata);

	   $_SESSION['OverallUser'] = $_SESSION['NewName'];
}



?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>CS230 Quiz</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
<body>
	<header>
		<div class="container">
			<h1>CS230 Quiz</h1>
		</div>
	</header>
	<main>

		<div class="container" align="center">
			<h2>Test Your Yoga Knowledge</h2>
			<p>This is a multiple choice quiz to test your knowledge of yoga in Sanskrit and English</p>
			<ul>
				<li>Number of Questions: <strong></strong><?php echo $total; ?></li>
				<li>Type: <strong></strong>Multiple Choice</li>
				<li>Estimated Time: <strong></strong><?php echo $total; ?> Minutes</li>
			</ul>

			<a href="question.php?n=1" class="start">Start English Quiz</a>
			<a href="questionSan.php?n=1" class="start">Start Sanskrit Quiz</a>
		</div>

	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2018, Alan Campbell (10346239) & yogacards.com
		</div>
	</footer>
</body>
</html>