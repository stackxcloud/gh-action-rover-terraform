#!/bin/sh -l
cd "$1" || exit
rover -planPath "$2" -standalone true
rover -planPath "$2" -genImage true
rsvg-convert -h 1080 rover.svg -o "$3"
