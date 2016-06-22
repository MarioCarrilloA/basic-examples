#!/bin/bash

# VBoxManage application allows to
# know information about setting and
# status of VMs.

# Show existing VMs
echo "Existing VMs"
VBoxManage list vms
echo "==========================="

# Show detailed information about
# existing VMs
echo "Details about VMs"
VBoxManage list -l vms
echo "==========================="


# Show running VMs
echo "Running VMs"
VBoxManage list runningvms
echo "==========================="
