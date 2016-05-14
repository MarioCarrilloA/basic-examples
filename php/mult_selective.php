#!/usr/bin/php

<?php

	$opts = getopt("ha::n:");

	foreach (array_keys($opts) as $opt)
		switch ($opt) {
			case 'a':
				echo "Optional value: ".$opts['a']."\n";
				break;

			case 'n':
				echo "Name: ".$opts['n']."\n";
				break;

			case 'h':
				echo "This is an example\n";
				echo "about getting arguments in php\n";
				break;

			default:
				echo "Invalid\n";
				exit(1);
				break;
		}
?>
