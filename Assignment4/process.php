<?php include 'database.php'; ?>
<?php session_start(); ?>
<?php

	//Check to see if score is set
	if(!isset($_SESSION['score'])){
		$_SESSION['score'] = 0;
	}

	if($_POST){
		$number = $_POST['number'];

		if($number == 1){
			$_SESSION["score"] = 0;
		}


		$selected_choice = $_POST['choice'];
		$next = $number+1;


		$incrementQuestionsComplete = 0;

		//echo $number.'<br>';
		//echo $selected_choice;

		/*
 		 * Get total questions 
 		 *
		 */
		
		$query = "SELECT * FROM `questions`";
		//Get result
		$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
		$total = $results->num_rows;
		$totalLimited = 5;
	
		/*
 		 * Get correct choice 
 		 *
		 */

		$query = "SELECT * FROM `choices`
					WHERE question_number = $number AND is_correct = 1";

		//Get result
		$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
		$total = $results->num_rows;

		//Get row
		$row = $result->fetch_assoc();

		//Set correct choice
		$correct_choice = $row['ID'];

		//Compare
		if($correct_choice == $selected_choice){
			//Answer is correct
			$_SESSION['score']++;
		}



		//echo $number;
		//die();
		//Check if last question
		//if($number == $totalLimited){
		if($_SESSION['questionsAnswered'] == 5){
			header("Location: final.php");
			exit();
		} else {
			header("Location: question.php?n=" . $next);
			//$incrementQuestionsComplete++;
		}

	}

	$_SESSION['questionsAnswered']++;
