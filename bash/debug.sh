#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
set -x
set -e

ls /home

echo "What is the meaning of -x and -e"

ls /etc | grep shadow

MYVAR=$(cat /etc/passwd | grep root | cut -c 1-4 | grep root)

echo $MYVAR

exit 0
