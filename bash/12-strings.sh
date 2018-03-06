#!/bin/bash

EXAMPLE="abcABC123ABCabc123"
SUBS="ABC"

# Using regular expresions
echo "Original string: ${EXAMPLE}"
echo "${EXAMPLE:1}"
echo "${EXAMPLE:7}"
echo "${EXAMPLE:8:12}"
echo "${EXAMPLE##$SUBS}"
echo "${#EXAMPLE}"
