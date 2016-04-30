#!/bin/bash

NUM1=$2
NUM2=$3

# *** MULTIPLE SELECTIVE ***

# For multiple selection could be use
# conditional sentences (if, elif and else)
# or it could be using cases.

function modify_result()
{
	echo "Options:"
	echo "1. Pi"
	echo "2. e"
	echo "3. Euler constant, gamma"

	# In bash is possible to ask for data
	# in execution time.
	read anw

	if [ $anw -eq 1 ];
	then
		echo "3.1415 "
	elif [ $anw -eq 2 ];
	then
		echo "2.718"
	elif [ $anw -eq 3 ];
	then
		echo "0.577215"
	else
		exit 0
	fi
}


while (( $# ))
do
	case $1 in
		-h )
			echo "-a, addition <n1> <n2>"
			echo "-s, subtraction <n1> <n2>"
			echo "-m, multiplication <n1> <n2>"
			echo "-d, division <n1> <n2>"
			echo "-c, Show constants"
		;;
		-a )
			res=$((NUM1+NUM2))
			echo "$res"
			;;
		-s )
			res=$((NUM1-NUM2))
			echo "$res"
			;;
		-m )
			res=$((NUM1*NUM2))
			echo "$res"
			;;
		-d )
			res=$((NUM1/NUM2))
			echo "$res"
			;;
		-c )
			modify_result
			;;
	esac
	shift
done

exit 0
