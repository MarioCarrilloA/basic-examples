#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
# source: http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-4.html
#
# Pipes let you use the output of a program as the input of another one
#

# first the command ls -l is executed, and it's output, instead of being printed,
# is sent (piped) to the sed program, which in turn, prints what it has to.
ls -l | sed -e "s/[aeio]/u/g"

# Here, the output of the program ls -l is sent to the grep program, which,
# in turn, will print lines which match the regex "\.txt$".
ls -l | grep "\.txt$"

exit 0
