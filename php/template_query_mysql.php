<?php
	echo "<html>";
	echo "<head>";
	echo "<title>Example LAMP</title>";
	echo "</head>";
	echo "<body>";
	echo "<h1>Students</h1>";


	$host  = "Hostname or IP address";
	$user  = "User name";
	$pass  = "Password";
	$dbase = "Data base name";
	$query = "";

	$connection = mysql_connect($host,$user,$pass);
	mysql_select_db($dbase,$connection);
	$result = mysql_query($query,$connection);

	echo "<table border=1>";
	while ($reg = mysql_fetch_row($result)){
		echo "<tr>";
		foreach ($reg as $field)
			echo "<td>".$field."</td>";
		echo "</tr>";
	}
	mysql_close($connectin);
	echo "</table>";
	echo "</body>";
	echo "</html>";
?>
