#!/bin/bash
read -p "Enter the Number of Time Coin Flip: " number
Heads=0
Tails=0

while [ $flips -le $number ]
do
        RandomCheck=$(( RANDOM%2 ))
        if [ $RandomCheck -eq 1 ]
        then
                Heads=`expr $Heads + 1`
        else
                Tails=`expr $Tails + 1`
        fi
        flips=`expr $flips + 1`
done

if [ $Heads -gt $Tails ]
then
        echo "Heads Won = $Heads"
elif [ $Heads -eq $Tails ]
then
        echo "Heads and Tails Both Won = $Heads"
else
        echo "Tails won = $Tails"
fi

