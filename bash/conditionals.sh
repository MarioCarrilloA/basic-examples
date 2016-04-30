#!/bin/bash

# When the symbol($) is next to a number is
# the syntax for receiving an argument,
# the number indicate the number of arguments
# expected and the order, example $1 $2 $3 etc.
NAME=$1
SUMMARY="Basic bash examples."
CONF_DIR="/etc"
CONF_FILE="/etc/ssh/sshd_config"
LFILE="example.txt"
SOFTLINK="symbol_example"

# *** STRINGS ***

# [-z] operator will return true if
# the string is empty, it means if the
# string is zero.
if [ -z "$NAME" ];
then
	echo "User name: None"
else
	echo "User name: $NAME"
fi

# [-n] operator  will return true if
# the string size is bigger than zero. In this
# case the script will not print the summary, this
# this is because the sentence is negative.
if [ ! -n "$SUMMARY" ];
then
	echo "$SUMMARY"
fi

# [-d] operator will return true
# if the file exists and it is a directory.
if [ -d "$CONF_DIR" ];
then
	echo "The configuration directory exists"
fi

# *** FILES ***

# [-e] operator will return true
# if the file exists
if [ -e "$LFILE" ];
then
	echo "$LFILE file exists"
else
	echo "test" > $LFILE
	ln -s $LFILE $SOFTLINK
fi

# [-f] operator will return true
# if the file exists and it is a regular file.
if [ -f "$CONF_FILE" ];
then
	echo "sshd_config exists and is a regular file"
fi

# [-L] operator will return true
# if the file exists and it is a symbolic
# link.
if [ -L "$SOFTLINK" ];
then
	echo "$SOFTLINK is a symbolic link"
fi

# *** FILE PERMISSIONS ***

# This section bash could get the file's permissions
# using operators
# [-r] Read
# [-w] Write
# [-x] Execution
if [ -r "$LFILE" ];
then
	echo "Read permission"
fi

if [ -w "$LFILE" ];
then
	echo "Write permission"
fi

if [ -x "$LFILE" ];
then
	echo "Execution permission"
fi

# In order to use logical and relational
# operators (AND, OR, EQUAL) you must use double
# square brackets.
if [[ -r "$LFILE" && -w "$LFILE" ]];
then
	echo "$LFILE can be edited"
fi

exit 0
