#!/bin/bash

EXAMPLE="Hello world"

echo "$EXAMPLE" | sed -e 's/world/WORLD/g'
echo "$EXAMPLE" | sed -e 's/^/HELLO /g'
echo "$EXAMPLE" | sed -e 's/l/L/g'
