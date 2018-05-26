<?php include 'database.php'; ?>
<?php session_start(); ?>

<?php

/*
This PHP file is concerned with pulling the English questions from the SQL database concerned 
*/

//This variable gets the current question number
$sample = $number = (int)$_GET['n'];


/*
 * The following conditional re-sets all Global Session variables back to their first attempt. It also resets the results JSON file to Incorrect
 */
if($_SESSION['reachedEnd'] == 1){
	$_SESSION['score'] = 0;
	$_SESSION['questionsAnswered']= 1;
	$_SESSION['reachedEnd'] = 0;
	$_SESSION['toIncrementShuffle'] = 0;
  $_SESSION['incrementJSONResult'] = 0;

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
  
	echo 'Your details have been reset'; echo '<br>';
}

echo 'The current user is ' . $_SESSION["OverallUser"]; echo '<br>';
echo "Your top score is " . $_SESSION['userScore']; echo '<br>';
echo "Your current score is " . $_SESSION['score']; echo '<br>';


	//Set question number
	$number = (int)$_GET['n'];

	/*
	 * Get the question
	 */
	$query = "SELECT * FROM `questionsSan`
				WHERE question_number = $number";
	
	//Get result
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

	$question = $result->fetch_assoc();

	/*
	 * Get the choices
	 */
	$query = "SELECT * FROM `choicesSan`
				WHERE question_number = $number";
	
	//Get result
	$choices = $mysqli->query($query) or die($mysqli->error.__LINE__);

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
		<div class="container">
			<div class="current">Question <?php echo $_SESSION['questionsAnswered'] ?> of 5</div>
			
			<?php
			$type = $_REQUEST['n'];

    		if($type == "1")
    		{
      			$imag = "img/yoga1.jpg";
    		}
    		else if($type == "2")
    		{
      			$imag = "img/yoga2.jpg";
    		}
    		else if($type == "3")
    		{
      			$imag = "img/yoga3.jpg";
    		}
    		else if($type == "4")
    		{
      			$imag = "img/yoga4.jpg";
    		}
    		else if($type == "5")
    		{
      			$imag = "img/yoga5.jpg";
    		}
    		else if($type == "6")
    		{
      			$imag = "img/yoga6.jpg";
    		}
    		else if($type == "7")
    		{
      			$imag = "img/yoga7.jpg";
    		}
    		else if($type == "8")
    		{
      			$imag = "img/yoga8.jpg";
    		}
    		else if($type == "9")
    		{
      			$imag = "img/yoga9.jpg";
    		}
    		else if($type == "10")
    		{
      			$imag = "img/yoga10.jpg";
    		}
    		else if($type == "11")
    		{
      			$imag = "img/yoga11.png";
    		}
    		else if($type == "12")
    		{
      			$imag = "img/yoga12.png";
    		}
    		else if($type == "13")
    		{
      			$imag = "img/yoga13.png";
    		}
    		else if($type == "14")
    		{
      			$imag = "img/yoga14.png";
    		}
    		else if($type == "15")
    		{
      			$imag = "img/yoga15.jpg";
    		}
    		else if($type == "16")
    		{
      			$imag = "img/yoga16.png";
    		}
    		else if($type == "17")
    		{
      			$imag = "img/yoga17.png";
    		}
    		else if($type == "18")
    		{
      			$imag = "img/yoga18.jpg";
    		}
    		else if($type == "19")
    		{
      			$imag = "img/yoga19.png";
    		}
    		else if($type == "20")
    		{
      			$imag = "img/yoga20.jpg";
    		}
			?>

			<div align="center">
			<img src="<?php echo $imag; ?>" width="300" height="400">
			</div>

			<p class="question" align="center">
				<?php echo $question['text']; ?>
			</p>
			<form method="post" action="processSan.php">
				<ul class="choices">
					<?php while($row = $choices->fetch_assoc()): ?>
						<li><input type="radio" name="choice" value="<?php echo $row['ID']; ?>" /><?php echo $row['text']; ?></li>
					<?php endwhile; ?>
				</ul>
				<input type="submit" value="Submit" />
				<input type="hidden" name="number" value="<?php echo $number; ?>"/>
			</form>
		</div>
	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2018, Alan Campbell (10346239) & yogacards.com
		</div>
	</footer>
</body>
</html>