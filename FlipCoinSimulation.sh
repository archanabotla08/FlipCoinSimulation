#!/bin/bash
Heads=0
Tails=0
RandomCheck=$(( RANDOM%2 ))
if [ $RandomCheck -eq 1 ]
then
        Heads=`expr $Heads + 1`
        echo "Heads Won = $Heads"
else
        Tails=`expr $Tails + 1`
        echo "Tails won = $Tails"
fi

