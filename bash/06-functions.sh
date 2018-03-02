#!/bin/bash

NAME=$1

# The functions in bash can be useful in order to resuse source
# code and save time.
function check_time()
{
	hour=$(date +"%T")
	echo "$hour"
}

function check_system_info()
{
	my_system=$1
	echo "System: $my_system"
	cpuinfo=$(cat /proc/cpuinfo)
	# What is a pipe (|)???
	# A pipe is the output of a program as the input of another one.
	cpus=$(echo "$cpuinfo" | grep "physical id" | sort | uniq | wc -l)
	cores=$(echo "$cpuinfo" | grep "core id" | sort | uniq | wc -l)
	threads=$(echo "$cpuinfo" | grep processor | wc -l)
	echo "CPUS:    $cpus"
	echo "CORES:   $cores"
	echo "THREADS: $threads"

}

# This is an alternative for conditional syntax however maybe could be
# preferable not use due to  it could be less legible (personal opinion).
# By the other hand you can save time writing less code.
[ -z "$NAME" ] && NAME="Unknown"

# For calling a function it is enough to write the function name and
# write and if the function require write an argument.
TIME=$(check_time)
echo "User: $NAME check system at: $TIME"
check_system_info "$(uname -r)"

exit 0
