<HTML>
	<head>
		<title>My first PHP page
		</title
	</head>
	
	<body>


<?php
	print "Hello PHP!";
	$name = "Randy";
	print "Hello, " .$name;
	$d = date("D");
	if ($d == "Fri")
	{
		print "Have a great weekend!";
	}
	elseif($d == "Mon")
	{
		print"Have a great weel!";
	}
	else {
		print "It's almost the weekend!";
	}
	

	?>
	</body>
</html>
