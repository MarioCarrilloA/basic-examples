#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
# source: http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html
#
#
# There are 3 file descriptors, stdin, stdout and stderr (std=standard).
#
# Basically you can:
#
#    redirect stdout to a file
#    redirect stderr to a file
#    redirect stdout to a stderr
#    redirect stderr and stdout to a file
#
#  1 'represents' stdout and 2 stderr.
#
#  stdout is buffered meanwhile stderr is a directly output
#
# A little note for seeing this things: with the less command you can view both
# stdout (which will remain on the buffer) and the stderr that will be printed
# on the screen, but erased as you try to 'browse' the buffer. 

# stdout to file
echo "ls -l > ls-stdout.txt"
ls -l > ls-stdout.txt

# stderr to file
echo "ls -l superman 2> ls-stderr.txt"
ls -l superman 2> ls-stderr.txt

# stdout to stderr
echo "This mesage is output throw stderr" >&2

# stderr and stdout to a file
echo "The output to stdout.txt and error to stderr.txt"
ls -l superman *.sh  > stdout.txt 2> stderr.txt

# Do not erase the content
echo "This is the first line"   > myoutput.txt
echo "This is the second line" >> myoutput.txt
echo "This is the third line"  >> myoutput.txt

# Erase the content
echo "This is the first line"  > myoutput2.txt
echo "This is the first line again"  > myoutput2.txt
echo "This is the first line again again"  > myoutput2.txt

# Redirect errors to /dev/null
ls superman 2> /dev/null
