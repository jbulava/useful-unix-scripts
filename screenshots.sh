#!/bin/bash
echo -n "Cleaning up desktop screenshots..."
touch ~/Desktop/screenshots/
#if [ -f ~/Desktop/Screen* ]
if ls ~/Desktop/Screen* 1> /dev/null 2>&1; then
  mv ~/Desktop/Screen* ~/Desktop/screenshots/
  echo "done."
else
	echo "none found."
fi