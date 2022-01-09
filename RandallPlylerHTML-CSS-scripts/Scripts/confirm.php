<html>
<head>
	<title>Thank you!</title>
</head>
<body>
	<h2>Thanks, <?php
	#Gets values from the form user submitted
	$first_name = $_POST['first_name'];
	$donut = $_POST['donut'];
	
	#Prints value of first name variable
	echo $first_name;
	
	#Creates strings used to connect to database
	$dsn = 'mysql:host=cssgate.insttech.washington.edu;dbname=rplyler';
	$username = 'rplyler';
	$password = 'KiSchoHy';
	
	#create a db connection object using info entered
	$db = new PDO($dsn, $username, $password);
	
	#create SQL query to insert value of $donut into DB table
	$query = "ISERT INTO donuts
		(donut)
		VALUES ('$donut')";
	
	# Runs query above using DB connection object created above
	$insert = $db->exec($query);
	?> for sharing your favorite donut!</h2>
	</body>
</html>