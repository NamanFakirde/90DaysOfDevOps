#!/bin/bash

<<usage
- prints total number of arguments
- prins all arguments
- prints scripts name
usage

echo "Total number of arguments are: $#"

echo "All arguments are: $@"

echo "Script name is: $0"
