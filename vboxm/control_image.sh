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
			--medium "$ISO_IMAGE" &> /dev/null


if (( $? != 0 ));then
	VBoxManage storagectl "$VM_NAME" \
				--name "IDE Controller" \
				--remove &> /dev/null

	VBoxManage storagectl "$VM_NAME" \
				--name "IDE Controller" \
				--add ide &> /dev/null

	VBoxManage storageattach "$VM_NAME" \
				--storagectl "IDE Controller" \
				--port 1 \
				--device 0 \
				--type dvddrive \
				--medium "$ISO_IMAGE" &> /dev/null
fi
