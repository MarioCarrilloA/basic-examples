#!/bin/bash

source info.sh
sname=${0##*/}

function usage()
{
cat<<EOF

Usage: $sname [options]

Options:

 -d			:Attach a virtual disk
 -i			:Attach an ISO image
 -h			:Show help

EOF
}

function attach_disk()
{
	disk_path=$1
	VBoxManage storageattach "$VM_NAME" \
				--storagectl "SATA Controller" \
				--port 0 \
				--device 0 \
				--type hdd \
				--medium "$disk_path"
}

function attach_iso()
{
	iso_image=$1
	VBoxManage storageattach "$VM_NAME" \
			--storagectl "IDE Controller" \
			--port 1 \
			--device 0 \
			--type dvddrive \
			--medium "$iso_image"
}

while (( $# ))
do
	case $1 in
		-d )
			attach_disk $2
		;;
		-i )
			attach_iso $2
		;;
		-h )
			usage
		;;
	esac
	shift
done
