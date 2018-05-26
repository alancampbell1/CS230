<?php include 'database.php'; ?>
<?php session_start(); ?>

<?php

$_SESSION['score'] = 0;
$_SESSION['questionsAnswered'] = 1;
$_SESSION['reachedEnd'] = 0;
$_SESSION['incrementJSONResult'] = 0;

/*
 * This piece of code takes an Array of 1 to 10 and uses the in built function shuffle to shuffle the numbers around.
 * Thus creating random placement of the elements and questions asked
 */

$my_array = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
shuffle($my_array);
$_SESSION['ShuffledArray'] = $my_array;
$_SESSION['toIncrementShuffle'] = 0;

/*
 * Get total number of questions
 */

$query = "SELECT * FROM questions";

//GET result
$results = $mysqli->query($query) or die($mysqli->error.__LINE__);

$total = $results->num_rows;
$_SESSION['userScore'] = 0;
$_SESSION['OverallUser'] = '';

/*
	This if statement checks if the entry of the existing name has been entered.
	It then welcomes them back

*/

if (isset($_POST["ExistingName"])) {
    $_SESSION['ExistingName'] = $_POST['ExistingName'];
	echo 'The current user is ' . $_SESSION['ExistingName']; echo '<br>';
	echo 'Welcome Back';echo '<br>';

	//Get existing user and score

	$str = file_get_contents('data.js');
	$json = json_decode($str, true);

	$increment = 0;
	//This while loop looks for the username in the JSON file 'data' and stores it locally as a session superglobal.
	while(true){
		if($json[$increment]['Username'] == $_SESSION['ExistingName']){
			$_SESSION['userScore'] = $json[$increment]['Score'];
			break;
		}
		$increment++;
		}
		//It prints the current score to the screen
		echo "Your current top score is " . $_SESSION['userScore'];
		$_SESSION['OverallUser'] = $_SESSION['ExistingName'];
	}

	/*
		This else if checks if NewName has been populated and prints it to the screen
	*/

	else if (isset($_POST["NewName"])) {
	    $_SESSION['NewName'] = $_POST['NewName'];
		echo 'The current user is ' . $_SESSION['NewName']; echo '<br>';
		echo "Your current top score is " . $_SESSION['userScore'];

	$formdata = array(
	      'Username'=> $_POST['NewName'],
	      'Score'=> 0
	   );

	//This NewName variable is saved to the JSON file and their score is set to zero

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
else {
	$_SESSION['wrongAnswer'] = 1;
	echo '<script>window.location.href = "index.php";</script>';
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
				<li>Number of Questions: 5 out of <strong></strong><?php echo $total; ?></li>
				<li>Type: <strong></strong>Multiple Choice</li>
				<li>Estimated Time: 5 Minutes</li>
			</ul>

			<a href="question.php?n=<?php echo $_SESSION['ShuffledArray'][$_SESSION['toIncrementShuffle']];?>" class="start">Start English Quiz</a>
			<a href="questionSan.php?n=<?php echo $_SESSION['ShuffledArray'][$_SESSION['toIncrementShuffle']];?>" class="start">Start Sanskrit Quiz</a>
		</div>

	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2018, Alan Campbell (10346239) & yogacards.com
		</div>
	</footer>
</body>
</html>


<?php

	/*
	 * This php section reads in the JSON file associated with the results and sets to Incorrect after a session of five.
	 */
	
	$string = file_get_contents('results.js');
	$json_a = json_decode($string, true);
	$elementCount  = count($json_a);
	
	$json_a[0]['Question Result:'] = 'Incorrect';
	$newJsonString = json_encode($json_a);
	file_put_contents('results.js', $newJsonString);
	$json_a[1]['Question Result:'] = 'Incorrect';
	$newJsonString = json_encode($json_a);
	file_put_contents('results.js', $newJsonString);
	$json_a[2]['Question Result:'] = 'Incorrect';
	$newJsonString = json_encode($json_a);
	file_put_contents('results.js', $newJsonString);
	$json_a[3]['Question Result:'] = 'Incorrect';
	$newJsonString = json_encode($json_a);
	file_put_contents('results.js', $newJsonString);
	$json_a[4]['Question Result:'] = 'Incorrect';
	$newJsonString = json_encode($json_a);
	file_put_contents('results.js', $newJsonString);

?>