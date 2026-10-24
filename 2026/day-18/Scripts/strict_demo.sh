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


# Scenario 1: test set -u
# comment rest

# Scenario 2: test set -e
# comment rest

# Scenario 3: test pipefail
# comment rest
