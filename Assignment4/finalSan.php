<?php session_start(); 

	//Current user name variable
	$_SESSION["OverallUser"];
	//Users old score
	$_SESSION['userScore'];

	$str = file_get_contents('data.js');
	$json = json_decode($str, true);
	//$myFile = "data.js";
	//$arr_data = array();

	$increment = 0;

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
</body>
</html>