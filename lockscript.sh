#!/usr/bin/env bash

lock="$HOME/config/lockicon.png"
tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert "$tmpbg" -blur 0x12 "$tmpbg"
convert "$tmpbg" "$lock" -gravity center -composite -matte "$tmpbg"

i3lock -u -i "$tmpbg"
