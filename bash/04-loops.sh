#!/bin/bash

ARCHS=(i686 x86_64 ppc_64)
ENVS=(Fedora Ubuntu Debian [4]=ClearLinux)
MACHINE=(native KVM power8)
TOOLS=(gcc cc g++)
SIZE_MCHN=${#MACHINE[*]}
SIZE_TOOLS=${#TOOLS[*]}
TOOL=0

# *** LOOPS-ARRAYS ***
#
# The arrays can be iterated using a loop in order to list their content.
# The braces allow to avoid conflicts with the pathname expansion. Furthermore
# it allows to do operations in order to get multiple information from
# the array.

# In both cases the arrays can be iterated without using a index var.
echo "Architectures"
echo "============="
for arch in ${ARCHS[*]}; do
	echo "$arch"
done

echo "Environments"
echo "============"
for ienvt in ${!ENVS[*]}; do
	printf "%d %s\n" $ienvt ${ENVS[$ienvt]}
done

# In both cases the date in each position will be showed using an index var.
echo "Machine"
echo "============"
for (( i=0; i<$SIZE_MCHN; i++ )); do
	printf "%s\n" ${MACHINE[$i]}
done

echo "Tools"
echo "============"
while [ $TOOL -lt $SIZE_TOOLS ]; do
	printf "%s\n" ${TOOLS[$TOOL]}
	TOOL=$((TOOL+1))
done

exit 0
