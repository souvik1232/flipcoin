#! /bin/bash
t=10
hc=0
tc=0
while(( t != 0 ))
do
	ran=$(( $RANDOM%2 ))
	if(( $ran == 0 ))
	then
		(( hc++ ))
	else
		(( tc++ ))
	fi
	(( t-- ))
done
echo "Head won---> $hc"
echo "Tail won---> $tc"
