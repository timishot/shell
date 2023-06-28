#!/bin/bash
# This script will test if we're in a leap year or not.

year=$(date +%Y)

if (( (year % 400) == 0 )) || (( (year % 4 == 0) && (year % 100 != 0) )); then
	echo "THis is a leap yer. Don't forget to charge the extra day!"
else
	echo "This is not a leap year."
fi
	
