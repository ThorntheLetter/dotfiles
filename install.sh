#!/bin/sh

# Check to make sure it has required argument
if [ -z "$1" ]
then
    echo 'Usage is "./install.sh PROFILE [HOME_DIR]"'
    exit 1
fi

# Set INST_HOME to install home directory if in arguments
if [ -n "$2" ]
then 
    if [ -n "$(echo $2 | grep -E '?/$?')" ]
    then
        INST_HOME=$2
    else
        INST_HOME=$2/
    fi
else
    INST_HOME="$HOME/"
fi

# Run profile install script
cd profiles/$1
. ./install.sh
