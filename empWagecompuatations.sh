#! /bin/bash -x
parttime=1
fulltime=2
rateperhr=20
maxdays=20
maxhr=50
days=0
emphr=0
declare -A dailywage
function EmployHrs() {
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
function GetEmpWage() {
local Emphrs=$1
echo $((rateperhr*emphr))
}

while [[ $days -lt $maxdays && $emphr -lt $maxhr ]]
do
        ((days++))
        emphr="$( EmployHrs $((RANDOM%3)) )"
        dailywage["day" $days]="$( GetEmpWage $emphr )"
        salary="$( GetEmpWage $emphr )"
        totsalary=$((totsalary+salary))
done
#totsalary=$((totsalary+salary))
echo $totsalary
echo ${dailywage[@]}
echo ${!dailywage[@]}








