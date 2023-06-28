#!/bin/bash

# This script let you present different menus to Tux. He will only  be happy
#When given a fish 

if [ "$1" == "fish" ]; then
	echo "Hmmmmmmm fish ...... Tux happy!"
else
	echo "Tux don't like that. Tux wants fish!"
fi
