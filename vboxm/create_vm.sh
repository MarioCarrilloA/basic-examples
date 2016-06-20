#!/bin/bash

VM_NAME="MarioTest"
VHD_NAME="$VM_NAME"
VHD_SIZE="5120"
VBOX_DIR="VirtualBox VMs"


# Create a Virtual Machine, it is a file
# with VM settings in $HOME/VirtualBox VMs
VBoxManage createvm --name "$VM_NAME"


# Create a hard disk for VM. This virtual disk
# will be created in the current path.
VBoxManage createhd --filename "$HOME/$VBOX_DIR/$VM_NAME/$VHD_NAME" --size "$VHD_SIZE"


# Register a virtual machine
# NOTE: A VM can be created  and registered
# in the same line.
# VBoxManage createvm --name $VM_NAME --register
VBoxManage registervm "/$HOME/$VBOX_DIR/$VM_NAME/${VM_NAME}.vbox"


