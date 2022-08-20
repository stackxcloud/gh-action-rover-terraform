#!/bin/sh -l
rover -planPath "$1" -standalone true
rover -planPath "$1" -genImage true
rsvg-convert -h 1080 rover.svg -o "$2"
