#!/usr/bin/php

<?php

	/*It's possible to use code from other
	* files, this could be helpful for a better
	* source code organization.*/
	include "math.php";

	function day_time(){

		$today = date(DATE_RFC2822);
		return $today;
	}

	print ("Date = ".day_time()."\n");
	print ("Result = ".addition(5,6)."\n");
	print ("Result = ".subtraction(6,1)."\n");

?>
