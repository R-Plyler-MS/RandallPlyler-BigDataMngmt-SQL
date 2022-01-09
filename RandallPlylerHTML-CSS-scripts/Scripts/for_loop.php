<html>
	<head>
		<title>For Loop</title>
	</head>
		<?php
			for ($i = 99; $i >= 1; $i--)
			{
				
		?>
		<p>
		<?= $i ?>bottles of beer on the wall, <br/>
		<?= $i ?>bottles of beer. <br/>
		Take one down, pass it around, <br/>
		<?= $i  - 1 ?>bottles of beer on the wall, <br/>
			
		<?php
			}
		?>
			
	
	
</html>