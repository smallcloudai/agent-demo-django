#!/bin/bash

# The purpose of this script is to check if python tool is available and if not availalbe to make sure it is installed
# later we need to run it from docker...

# check if python is installed
if command -v python &> /dev/null
then
    echo "python is installed"
    python --version
    exit 0
else
    echo "python is not installed"
fi

# check if system is mac otherwise make and error
if [ "$(uname)" == "Darwin" ]; then
     echo "Mac OS X"
     brew install python
else
     echo "Not Mac OS X"
     echo "Please install python manually"
fi