#!/bin/bash
# This script will testf we're in a leap year or not.

year=$(date +%Y)

if [ $((year % 400)) -eq 0 ]; then
	echo "This is a leap year. February hs 29 days."
elif [ $((year % 4)) -eq 0 ]; then
	if [ $((year % 100)) -ne 0 ]; then
		echo "This is a leap year. february has 29 days."
	else
		echo "This is not a leap year, Februry has 28 days."
	fi
else
	echo "This is not a leap year. February has 28 days."
fi
