#!/bin/bash

sname=${0##*/}

function usage()
{
cat<<EOF

Usage: $sname [options]

Options:

 -c			:Convert formatimage <input img name> <output img name> [format: vdi|vmdk|vhd|raw]
 -h			:Shows help
 -n			:Create new disk <out disk name> <disk size>

EOF
}

function new_disk()
{

	disk=$1
	size=$2

	if [ -z "$disk" ];then
		disk="vdisk"
	fi

	if [ -z "$size" ];then
		size="5120"
	fi

	VBoxManage createhd \
				--filename "$disk" \
				--size "$size"
}

function convert_image()
{
	input_img=$1
	output_img=$2
	format=$3

	if [ -z "$input_img" ];then
		echo "input image no found"
		exit 0
	fi

	if [ -z "$output_img" ];then
		image_name="newImage"
	fi

	if [ -z "$format" ];then
		echo "format no specified"
		exit 1
	fi

	VBoxManage clonehd "$input_img" "${output_img}"."${format}" --format "$format"
}

while (($#))
do
	case $1 in
		-c )
			convert_image $2 $3 $4
		;;
		-h )
			usage
		;;
		-n )
			new_disk $2 $3
		;;
	esac
	shift
done
