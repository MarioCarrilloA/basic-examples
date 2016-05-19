<?php

	echo "<html>";
	echo "<head>";
	echo "<title>Example LAMP</title>";
	echo "</head>";
	echo "<body>";
	echo "<h1>Students</h1>";

	//Information necessary for DB connection
	$host  = "Hostname or IP address";
	$user  = "User name";
	$pass  = "Password";
	$dbase = "Data base name";
	$query = "";

	$connection = new mysqli($host,$user,$pass,$dbase);

	if ($stmt = $connection->prepare($query)) {
		$stmt->execute();

		/*bind_resiult funcion binds columns in the result set
		to variables. example:
		bind_result($id, $name, $tel, $addres)*/
		$stmt->bind_result();

		echo "<table border=1>";
		while ($stmt->fetch()) {
			echo "<tr>";
			echo "<td>".$name."</td>";
			echo "</tr>";
		}

		$stmt->close();
	}

	$connection->close();
	echo "</table>";
	echo "</body>";
	echo "</html>";
?>
