#!/bin/bash -x
fulltime=1
parttime=2
wageperhr=20
parthrs=8
fullhrs=16
attan=$((RANDOM%3))
case $attan in 
$fulltime)
        wage=$((wageperhr*fullhrs))
        echo $wage
	;;
$parttime)
        wage=$((wageperhr*parthrs))
        echo $wage
	;;
*)
	echo "absent"
	;;
esac




