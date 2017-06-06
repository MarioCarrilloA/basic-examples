#!/bin/bash

# valitate if the scripts did not
# receive arguments then it will set
# a default value.
if [ ! -z  "$1" ];then
	N1=$1
else
	N1=5
fi

if [ ! -z  "$2" ];then
	N2=$2
else
	N2=10
fi

# *** INTEGER COMPARISON ***

# [-eq] operator will return true if
# the numbers are equal.
if [ "$N1" -eq "$N2" ];then
	echo "$N1 and $N2 are equal"
fi

# [-ne] operator will return true if
# the numbers are not equal.
if [ "$N1" -ne "$N2" ];then
	echo "$N1 is no equal to $N2"
fi

# [-gt] operator will return true if
# the N1 is greater than N2.
if [ "$N1" -gt "$N2" ];then
	echo "$N1 is grater than $N2"
fi

# [-ge] operator will return true if
# N1 is greater or equal than N2.
if [ "$N1" -ge "$N2" ];then
	echo "$N1 is grater than or equal to $N2"
fi

# [-lt] operator will return true if
# N1 is less than N2.
if [ "$N1" -lt "$N2" ];then
	echo "$N1 is less than $N2"
fi

# [-le] operator will return true if
# N1 is less or equal than N2.
if [ "$N1" -le "$N2" ];then
	echo "$N1 is less than or equal to $N2"
fi

# NOTE: For using relational operator
# or make arithmetic operation you have to use
# double parentheses

# [<] relational operator will return true
# if N1 is less than N2.
if (("$N1" < "$N2"));then
	echo "$N1 is less than $N2"
fi

# [<=] relational operator will return true
# if N1 is less or equal than N2.
if (("$N1" <= "$N2"));then
	echo "$N1 is less or equal to $N2"
fi

# [>] relational operator will return true
# if N1 is greater than N2.
if (("$N1" > "$N2"));then
	echo "$N1 is grater than $N2"
fi

# [>=] relation operator will return true
# if N1 is  greater or equal than N2.
if (("$N1" >= "$N2"));then
	echo "$N1 is greater or equal than $N2"
fi

exit 0
