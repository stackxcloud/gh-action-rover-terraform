#!/bin/sh -l
rover -workingDir "$1" -standalone true
rover -workingDir "$1" -genImage true
rsvg-convert -h 1080 rover.svg -o "$2"
