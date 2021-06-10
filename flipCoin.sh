#!/bin/bash -x

hedcount=0
tailcount=0
i=0
while((i<=10))
do
	win=$((RANDOM%2))

	if(($win==1))
	then
		hedcount=$((hedcount+1))
		echo heads is winner
	else
		tailcount=$((tailcount+1))
		echo Tail is winner
	fi
	((i++))
done
echo hedcount $hedcount
echo tailcount $tailcount
