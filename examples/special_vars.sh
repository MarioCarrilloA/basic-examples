#!/bin/bash

# [$#] var contains the number of arguments
# that has been received
if (( $# > 0 ));
then
	# [$@] var contains all arguments
	# written bv the user as parameters
	echo "Arguments received: $#"
	for ARG in $@
	do
		echo "Argument: $ARG"
	done
	# [$*] var contains all argumets
	# The difference between $@ and $* is:
	# [$@] is equivalent: "$1" "$2" "$3" ...
	# [$*] is equivalent: "$1 $2 $3"
	echo "The argument received were: $*"
	echo "The first argument was: $1"
else
	echo "No arguments"
fi
