#!/bin/bash

trap "echo Sign catched $(date);exit 0;" SIGINT SIGTERM

# The script will execute and endless loop, until it catches
# SIGINT or SIGTERM signals.
while [ 1 ]; do
	echo "Idle"
	sleep 2
done
