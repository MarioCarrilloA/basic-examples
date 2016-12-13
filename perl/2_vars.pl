#!/usr/bin/perl

# Some about vars in perl
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
