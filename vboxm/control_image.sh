#!/bin/bash

source info.sh

ISO_IMAGE=$1

if [ -z "$ISO_IMAGE" ];then
	echo "iso image no found"
fi

VBoxManage storageattach "$VM_NAME" \
			--storagectl "IDE Controller" \
			--port 1 \
			--device 0 \
			--type dvddrive \
			--medium "$ISO_IMAGE"
