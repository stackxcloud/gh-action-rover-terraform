#!/bin/sh -l

if [ "$1" != "." ]; then
  echo "Changing directory to: $1"
  cd "$1" || exit 1
fi

rover -planPath "$2" -standalone true
rover -planPath "$2" -genImage true
rsvg-convert -h "$4" rover.svg -o "$3"
