#!/bin/sh -l
rover -planJSONPath "$1" -standalone true
rover -planJSONPath "$1" -genImage true
rsvg-convert -h 1080 rover.svg -o "$2"
