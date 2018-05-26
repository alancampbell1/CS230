<?php session_start(); ?>

<!--

TODO: Randomise the questions and the yoga cards 
	  Style the pages
	  Get working on local XAMPP
	  Comment everything

-->

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
	
	<div align="center">
		<h2>Welcome to the Yoga Quiz</h2>
		<h2>Please enter your name and press submit to progress</h2>
	</div>

	<div align="center">
	<br>
	<h2>Existing User: </h2>
	<form action="homepage.php" method="post">
		Name: <input type="text" name="ExistingName"><br>
		<input type="submit">
	</form>

	<h2>New User: </h2>
	<form action="homepage.php" method="post">
		Name: <input type="text" name="NewName"><br>
		<input type="submit">
	</form>


	</div>

	<footer>
		<div class="container">
			Copyright &copy; 2018, Alan Campbell (10346239) & yogacards.com
		</div>
	</footer>
</body>
</html>