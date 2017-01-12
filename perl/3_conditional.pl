#!/usr/bin/perl
 
$A = 10;
$B = 20;

$res = ($B > $A )? "B is greater than A" : "A is greater than B";

print "$res\n";

$year = 2017;

if ($year gt 0) {
	print "The year is $year\n";
} else {
	print "Invalid year\n";
}

if (($year % 100) > 0 || ($year % 400) > 0) {
	print "No bisiest year\n";
} else {
	print "Bisiest year\n";
}

unless (!$#ARGV) {
	print "No arguments\n"
}
