#!/bin/bash

set -euo pipefail

echo "Script started"

echo "1) Testing undefined variable (set -u)"
echo "Value: $UNDEFINED_VAR"

echo "2) Testing failing command (set -e)"
ls /directory-that-does-not-exist

echo "3) Testing pipe failure (set -o pipefail)"
echo "hello" | grep "world"

echo "Script completed"


# To test each mode -
# Comment the rest two mode and then run 
