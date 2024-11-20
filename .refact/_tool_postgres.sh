#!/bin/bash

# The purpose of this script is to check if postgres tool is available and if not availalbe to make sure it is installed
# later we need to run it from docker...

# check if postgres is installed
if command -v psql &> /dev/null
then
    echo "psql is installed"
    psql --version
    exit 0
else
    echo "psql is not installed"
fi

# check if system is mac otherwise make and error
if [ "$(uname)" == "Darwin" ]; then
     echo "Mac OS X"
     brew install postgres
else
     echo "Not Mac OS X"
     echo "Please install postgres manually"
fi