#!/usr/bin/php

<?php

/*
* PhP is very flexible with arrays, the index
* could be an integer number, a float number,
* a boolean or even a string.
*/
	echo "Operating Systems\n";
	$osystems = [
		1       => "Fedora",
		2       => "Ubuntu",
		"tres"  => "Debian",
		FALSE   => "CentOS",
		4.5     => "Clear Linux",
	];

	foreach ($osystems as $i => $value) {
		print ("Index: ".$i."\tValue: ".$value."\n");
	}

	echo "Tools\n";
	$tools = [ "gcc", "g++", "cc" ];

	for ($i = 0; $i < count($tools); $i++) {
		print ("Index: ".$i."\tValue: ".$tools[$i]."\n");
	}
?>
