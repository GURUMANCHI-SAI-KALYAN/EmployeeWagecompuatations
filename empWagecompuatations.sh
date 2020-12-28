#!/bin/bash -x
parttime=1
fulltime=2
rateperhr=20
maxdays=20
maxhr=50
days=0
while [[ $days -lt $maxdays && $emphr -lt $maxhr ]]
do
((days++))
empcheck=$((RANDOM%3))

case $empcheck in
        $parttime)
                ((emphr+=4))
                ;;
        $fulltime)
                 ((emphr+=8))
                ;;

                *)
                  ((emphr+=0))
                ;;
esac
        salary=$(($rateperhr*$emphr))
        totsalary=$(($totsalary+$salary))
done








