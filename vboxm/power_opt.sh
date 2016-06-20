#!/bin/bash

source info.sh

sname=${0##*/}

function usage()
{

cat <<EOF

Usage: $sname [options]

Options:

 -a		: Simulate to press prower button vm
 -h		: Show help
 -o		: Poweroff virtual machine
 -s		: Start virtual machine

EOF
}

#usage
while (( $# ))
do
	case $1 in
		-a )
			VBoxManage controlvm "$VM_NAME" acpipowerbutton
		;;
		-h )
			usage
		;;
		-o )
			VBoxManage controlvm "$VM_NAME" poweroff
		;;
		-s )
			VBoxManage startvm "$VM_NAME"
		;;
	esac
	shift
done
