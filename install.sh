#!/bin/sh

# Recursively creates symlinks in the same directory structure as in the profile
symlink_directory()
{
    for file in  .* *
    do
        if [ $file = "." -o $file = ".." ]
        then
            continue
        elif [ -d $file ]
        then
            cd $file
            INST_DIR=$INST_DIR/$file
            mkdir -pv $INST_DIR
            symlink_directory
            INST_DIR=${INST_DIR%/*}
            cd ..
        else
            ln -si `pwd`/$file $INST_DIR/$file
        fi
    done
}

# Check to make sure it has required argument
if [ -z "$1" ]
then
    echo 'Usage is "./install.sh PROFILE [INSTALL_DIR]"'
    exit 1
fi

# Set INST_DIR to install home directory if in arguments
if [ -n "$2" ]
then 
    INST_DIR=${2%/}
else
    INST_DIR=$HOME
fi

# Go to specified profile and call symlink_directory
cd profiles/$1
symlink_directory
