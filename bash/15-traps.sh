#!/bin/bash

trap "echo Sign catched $(date);exit 0;" SIGINT SIGTERM

while [ 1 ]; do
	echo "Idle"
	sleep 2
done
