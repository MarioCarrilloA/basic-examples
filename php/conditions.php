#!/usr/bin/php

<?php

/*
* ==   Equal                     $x == $y 	Returns true if $x is equal to $y
* ===  Identical                 $x === $y 	Returns true if $x is equal to $y, and they are of the same type
* !=   Not equal                 $x != $y 	Returns true if $x is not equal to $y
* <>   Not equal                 $x <> $y 	Returns true if $x is not equal to $y
* !==  Not identical             $x !== $y 	Returns true if $x is not equal to $y, or they are not of the same type
* >    Greater than              $x > $y 	Returns true if $x is greater than $y
* <    Less than                 $x < $y 	Returns true if $x is less than $y
* >=   Greater than or equal to  $x >= $y 	Returns true if $x is greater than or equal to $y
* <=   Less than or equal to     $x <= $y 	Returns true if $x is less than or equal to $y
*/

	$a = 5;
	$b =10;

	if ($a > $b) {
		print ($a." is grater than  ".$b."\n");
	} else {
		print ($a." is not grater than ".$b."\n");
	}

	$cad1 = "example";
	$cad2 = "example";

	/* It's posible to use some string functions used
	 *  used in other langages.
	 */
	if (strcmp ( $cad1 , $cad2 ) == 0 )
		print ("Both strings are equal\n");

	if ( $cad1 == $cad2 )
        print ("Both strings are equal\n");
?>
