#!/bin/bash

<<usage
- set -e for exit on error
- tries to create directory
- tries to navigate, create file inside
- uses || operator to print error
usage

set -e

mkdir /tmp/devops-test && echo "Created successfully" || echo "Directory already exists!"

cd /tmp/devops-test || echo "cannot change directory!"

touch test-file.txt || echo "Cannot create a file!"
