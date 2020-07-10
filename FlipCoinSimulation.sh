#!/bin/bash
Heads=0
Tails=0
flips=0
while [ $flips ]
do
        RandomCheck=$(( RANDOM%2 ))
        if [ $RandomCheck -eq 1 ]
        then
                Heads=`expr $Heads + 1`
        else
                Tails=`expr $Tails + 1`
        fi
        flips=`expr $flips + 1`
if [[ ($Heads -eq 21 ) || ($Tails -eq 21) ]]
then
        break;
else
        continue
fi
done

if [ $Heads -gt $Tails ]
then
        echo "Heads Won = $Heads"
	echo "Heads Won by Tails="$(( $Heads - $Tails ))
elif [ $Heads -eq $Tails ]
then
        echo "Heads and Tails Both Won = $Heads"
	echo "Heads and Tails Both Won ="$(( $Heads - $Tails ))

else
        echo "Tails won = $Tails"
	echo "Tails Won by Heads="$(( $Tails - $Heads ))
fi

