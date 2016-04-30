#!/usr/bin/php

<?php

/*
* PhP is very flexible with arrays, the index
* could be an integer number, a float number,
* a boolean or even a string.
*/
	$osystems = [
		1      => "Fedora",
		2      => "Ubuntu",
		"tres" => "Debian",
		4.5    => "Clear Linux",
		true   => "CentOS",
	];

	foreach ($osystems as $i => $value) {
	print ("Index: ".$i."\tValue: ".$value."\n");
}
?>
