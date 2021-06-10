#!/bin/bash -x

hedcount=0
tailcount=0
function achieve(){
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
}
achieve
while true
do

	if(($hedcount>$tailcount))
		then
		echo headwins by $(($hedcount-$tailcount))
		break
	elif(($hedcount<$tailcount))
		then
		echo tailwins by $(($tailcount-$hedcount))
		break
	else
		if(($(($hedcount-$tailcount))==2 || $(($tailcount-$hedcount))==2))
		then
			echo $((abs($headcount-$tailcount)))
			break
		else
			achieve
		fi
	fi
done
