#!/bin/bash

# This script let you present different menus to Tux. He will only  be happy
#When given a fish. We've also added a dolphin and (presumably) a camel.

menu=$1
animal=$2

if [ "$menu" == "fish" ]; then
	if [ "$animal" == "penguin" ]; then
		echo "Hmmmmmmmmmmmmmm fish..... Tux happy!"
	elif [ "$animal" == "dolphin" ]; then
		echo "Pweerpeettreetppreprepp!"
	else
		echo "*prrrrrrrrrrrrrrrrrrrrt"
	fi
else
	if [ "$animal" == "penguin" ]; then
		echo "Tux don't like that. Tux wants fish!"
		exit 1
	elif [ "$animal" == "dolphin" ]; then
		echo "pwepewodjsjnd!"
		exit 2
	else
		echo "Will you read this sign?!"
		exit 3
	fi
fi
