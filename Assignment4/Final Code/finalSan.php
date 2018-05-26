<?php session_start(); 

/*
 * This PHP file is the results page for the Sanskrit quiz. The user is told their  score and if they beat their overall top stored in the JSON file.
 * If they beat their top score they can save this to the JSON file and return the index page or try again where their score will be reset to zero.
 */


	//Current user name variable
	$_SESSION["OverallUser"];
	//Users old score
	$_SESSION['userScore'];

	$_SESSION['reachedEnd'] = 1;


	//Connects to the JSON file located in the same folder in htdocs. The JSON file stores usernames and top scores
	$str = file_get_contents('data.js');
	$json = json_decode($str, true);

	$increment = 0;

	/*
  	 * This while loop and if statement finds the username signed in, checks to see if their current score beats their top score and if so,
  	 * saves their new top to the JSON file.
	 */

	while(true){
		if($json[$increment]['Username'] == $_SESSION['OverallUser']){
			echo "Found the current user " . $json[$increment]['Username']; echo '<br>';
			if($_SESSION['score'] > $json[$increment]['Score']){
					echo "You have a new high score " . $_SESSION['score'];

					$json[$increment]['Score'] = $_SESSION['score'];
					$newJsonString = json_encode($json);
					file_put_contents('data.js', $newJsonString);
					break;
			}
			else {
				echo "You did not break your top score with " . $_SESSION['score'];
				break;
			}
		}
		$increment++;
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
			<h2>You're done!</h2>
				<p>Congrats <?php echo $_SESSION['OverallUser']; ?>! You have completed the test</p>
				<p>Final Score: <?php echo $_SESSION['score']; ?></p>
				<a href="questionSan.php?n=1" class="start">Try Again</a>
				<a href="index.php" class="start">Submit and Exit</a>
		</div>
	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2018, Alan Campbell (10346239) & yogacards.com
		</div>
	</footer>
	<div align="center">
			<?php
				/*
				 * This section reads in the results JSON file and prints out the results, either Correct or Incorrect set in the process.php file
				 * and prints the results to the screen
				 */

				$string = file_get_contents('results.js');
				$json_a = json_decode($string, true);
				$elementCount  = count($json_a);
				echo '<br>';
				echo 'The following is a breakdown of your results:';
				echo '<br>';
				echo 'Question 1: ';
				echo $json_a[0]['Question Result:']; echo '<br>';
				echo 'Question 2: ';
				echo $json_a[1]['Question Result:']; echo '<br>';
				echo 'Question 3: ';
				echo $json_a[2]['Question Result:']; echo '<br>';
				echo 'Question 4: ';
				echo $json_a[3]['Question Result:']; echo '<br>';
				echo 'Question 5: ';
				echo $json_a[4]['Question Result:']; echo '<br>';
			?>
		</div>
</body>
</html>