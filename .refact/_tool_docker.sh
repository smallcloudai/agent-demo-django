#!/bin/bash

# The purpose of this script is to check if python tool is available and if not availalbe to make sure it is installed
# later we need to run it from docker...

# check if python is installed
if command -v docker &> /dev/null
then
    echo "docker is installed"
    docker --version
    exit 0
else
    echo "docker is not installed"
fi

# check if system is mac otherwise make and error
if [ "$(uname)" == "Darwin" ]; then
     echo "Mac OS X"
     brew install docker
else
     echo "Not Mac OS X"
     echo "Please install docker manually"
fi