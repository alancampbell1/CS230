<?php include 'database.php'; ?>
<?php session_start(); ?>

<?php

echo 'The current user is ' . $_SESSION["OverallUser"]; echo '<br>';
echo "Your current top score is " . $_SESSION['userScore'];
echo "Your current score is " . $_SESSION['score'];


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

	//echo $_SESSION["name"];

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
			<!--<div class="current">Question 1 of 5</div>-->
			<div class="current">Question <?php echo $number ?> of 5</div>
			
			<?php
			$type = $_REQUEST['n'];
			//echo $type;

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

    		//echo $imag;

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