<html>
<head>
	<title>Everyones favorite donuts</title>
	<style>
		table {
			border: 2px solid black;
			border-collapse: collapse;
			}
			
		td {
			border: 1px solid black;
			}
			</style>
</head>			
	<body>
		<table>
			<tr><th>Donut Name</th></tr>
			<?php
	
#Creates strings used to connect to database
	$dsn = 'mysql:host=cssgate.insttech.washington.edu;dbname=rplyler';
	$username = 'rplyler';
	$password = 'KiSchoHy';
	
	#create a db connection object using info entered
	$db = new PDO($dsn, $username, $password);
	

	# Runs query above using DB connection object created above
	$donuts = $db->exec('SELECT * FROM donuts');
	
	foreach ($donuts as $donut) {
		echo "<tr><td>" . $donut['donut'] . "</td></tr>";
	}
	
	
	?>
	</table>
	</body>
	

</html>