#!/bin/bash -x

win=$((RANDOM%2))

if(($win==1))
then
	echo heads is winner
else
	echo Tail is winner
fi
