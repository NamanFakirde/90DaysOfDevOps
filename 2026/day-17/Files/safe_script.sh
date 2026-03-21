#!/bin/bash

set -e

mkdir /tmp/devops-test || echo "Already exits"

cd /tmp/devops-test || echo "cannot change to directory"

touch test-file.txt || echo "cannot create file"
