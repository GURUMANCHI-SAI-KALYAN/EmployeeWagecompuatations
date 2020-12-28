#!/bin/bash -x
wageperhr=20
hrs=8
attan=$((RANDOM%2))
if [[ $attan -eq 1 ]]
then
        wage=$((wageperhr*hrs))
        echo $wage
else
 echo "absent"
fi




