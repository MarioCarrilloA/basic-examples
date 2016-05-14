#!/usr/bin/php

<?php

	$opts = getopt("hs:");

	foreach (array_keys($opts) as $opt)
		switch ($opt) {
			case 's':
				echo "Case s";
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
