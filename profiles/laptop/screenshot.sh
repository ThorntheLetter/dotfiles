#!/usr/bin/env bash

directory="$HOME/media/screenshots"
time=$(date +"%Y-%m-%d-%T")
file="$directory/$time.png"

# screenshot stuff

while getopts "su" opt; do
  case $opt in
    s)
      scrot -s $file
      xclip -t image/png -selection clipboard -i $file
      exit
      ;;
    u)
      scrot -u $file
      xclip -t image/png -selection clipboard -i $file
      exit
      ;;
  esac
done

scrot $file
xclip -t image/png -selection clipboard -i $file
