#!/bin/bash -x

hedcount=0
tailcount=0
while true
do
	win=$((RANDOM%2))

	if(($win==1))
	then
		hedcount=$((hedcount+1))
		if(($hedcount==21))
		then
			break
		fi
	else
		tailcount=$((tailcount+1))
		if(($tailcount==21))
		then
			break
		fi

	fi
done

if(($hedcount>$tailcount))
	then
	echo headwins by $(($hedcount-$tailcount))
elif(($hedcount<$tailcount))
	then
	echo tailwins by $(($tailcount-$hedcount))
else
	echo Tie
fi
