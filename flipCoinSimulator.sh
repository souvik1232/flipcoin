#! /bin/bash
t=0
hc=0
tc=0
while(( t == 0 ))
do
	ran=$(( $RANDOM%2 ))
	if(( $ran == 0 ))
	then
		(( hc++ ))
		if(( $hc == 21 ))
		then
			break
		fi
	else
		(( tc++ ))
		if(( $tc == 21 ))
		then
			break
		fi
	fi
done
if(( $hc == $tc ))
then
	echo "Tie"
else
	echo "Win"
	if(( $hc > $tc ))
	then
		echo "Head won---> $(( $hc - $tc ))"
	else
		echo "Tail won---> $(( $tc - $hc ))"
	fi
fi

