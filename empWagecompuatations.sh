#!/bin/bash -x
#! /bin/bash -x
parttime=1
fulltime=2
rateperhr=20
maxdays=20
maxhr=50
days=0
emphr=0
function employhrs() {
        local empcheck=$1
        case $empcheck in
        $parttime)
                emphr=4
                ;;
        $fulltime)
                 emphr=8
                ;;

                *)
                  emphr=0
                ;;
        esac
        echo $emphr
}

while [[ $days -lt $maxdays && $emphr -lt $maxhr ]]
do
        ((days++))
        emphr="$( employhrs $((RANDOM%3)) )"
        salary=$((rateperhr*emphr))
        totsalary=$((totsalary+salary))
done









