#!/bin/bash -x
wageperhr=20
parthrs=8
fullhrs=16
attan=$((RANDOM%3))
if [[ $attan -eq 1 ]]
then
        wage=$((wageperhr*fullhrs))
        echo $wage
elif [[ $attan -eq 2 ]]
then
        wage=$((wageperhr*parthrs))
        echo $wage
else
 echo "absent"
fi




