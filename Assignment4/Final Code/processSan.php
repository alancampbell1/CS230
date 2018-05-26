<?php include 'database.php'; ?>
<?php session_start(); ?>
<?php

$_SESSION['toIncrementShuffle']++;

/*
 * This page checks the users answer and against the English SQL table. If they are correct they are given the next series of questions.
 * Once they complete 5 questions, they are sent to the final.php page to view their results.
 */

	//Check to see if score is set
	if(!isset($_SESSION['score'])){
		$_SESSION['score'] = 0;
	}

	if($_POST){
		$number = $_POST['number'];

		if($number == 1){
			//$_SESSION["score"] = 0;
		}

		$selected_choice = $_POST['choice'];
		$next = $number+1;
		$incrementQuestionsComplete = 0;


		/*
 		 * Get total questions 
		 */
		
		$query = "SELECT * FROM `questions`";
		//Get result
		$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
		$total = $results->num_rows;
		$totalLimited = 5;
	
		/*
 		 * Get correct choice 
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

			//If the answer is correct, the results json file is read in and sets the current array element to correct.

			$string = file_get_contents('results.js');
			$json_a = json_decode($string, true);

			$json_a[$_SESSION['incrementJSONResult']]['Question Result:'] = 'Correct';
			$newJsonString = json_encode($json_a);
			file_put_contents('results.js', $newJsonString);
		}

		
		if($_SESSION['questionsAnswered'] == 5){
			header("Location: finalSan.php");
			exit();
		} else {
			header("Location: questionSan.php?n=" . $_SESSION['ShuffledArray'][$_SESSION['toIncrementShuffle']]);
		}
	}
	$_SESSION['questionsAnswered']++;
	$_SESSION['incrementJSONResult']++;
