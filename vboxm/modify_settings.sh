#!/bin/bash

source info.sh

# It's possible to modify the OS type
# for virtual machine, the command can show
# which OS are supported:
# 		$ VBoxManage list ostypes
VBoxManage modifyvm "$VM_NAME" --ostype "$OS_TYPE"

# The values related to resources
# can be modified.
VBoxManage modifyvm "$VM_NAME" --cpus "$CPUS" --memory "$MEMORY" --vram "$VRAM"

