#!/usr/bin/perl

# Some about vars in perl
#
#   Scalar vars
#
# - The most basic kind of variable
#   in Perl is the scalar variable.
# - It is possible to interchange
#   different kind of values in the
#   same var.

# Assign a string
$figure = "Circle";

# Assign an integer
$radio = 20;

# Assign a float
$PI = 3.1416;

# The var type will be according
# to the received value, even if
# another type of data is involved
$area = ($PI * ($radio**2));

#interchange value
$radio=$figure;

print "Area of $radio is: $area\n";

# Arrays
#
# In perl an array is a variable that
# stores an ordered list of scalar
# values. An array starts with  an
# "at" (@).
@scores = (80, 95, 74);
@names = ("Bob", "Sara", "John");

print "$names[0]: $scores[0]\n";
print "$names[1]: $scores[1]\n";
print "$names[2]: $scores[2]\n";
print "Total students: ", scalar @names,"\n";
print "The students are: @names\n";

# Hashes
#
# Basically a hash is group of
# key/value, they start with "%"

%group = ('Bob', 80, 'Sara', 95, 'John', 74);

print "\$group{'Bob'}:  $group{'Bob'}\n";
print "\$group{'Sara'}: $group{'Sara'}\n";
print "\$group{'John'}: $group{'John'}\n";


