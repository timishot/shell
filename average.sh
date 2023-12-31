#!/bin/bash


#calculate the average of a series of numbes.

SCORE=0
AVERAGE=0
SUM=0
NUM=0

while true; do
	echo -n "Enter your [0-100%]  ('q' for quit: )"
	read SCORE
	if [[ $SCORE == "q" ]]; then
		echo "Average rating: $AVERAGE%"
		break
	elif ((SCORE < 0 || SCORE > 100)); then
		echo "Be serious, common, try again."
	else
		SUM=$((SUM + SCORE))
		NUM=$((NUM + 1))
		AVERAGE=$(echo "scale=2; $SUM / $NUM" | bc) 
	fi
done

echo "exiting."
