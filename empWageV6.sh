#! /bin/bash  
 
# Constant 
 IS_PRESENT_FULLTIME=1
 IS_PRESENT_PARTTIME=2
 EMP_RATE_PER_HR=20
TOTAL_WORKING_DAYS=20  

#variable 
totalWorkingHours=0

for (( counter=1; counter<=$TOTAL_WORKING_DAYS;counter++ ))
do
#VARIABLE 
empCheck=$(( RANDOM % 3))



    case $empCheck  in 
        $IS_PRESENT_FULLTIME )

     empHrs=8;;
     $IS_PRESENT_PARTTIME) 

      empHrs=4 ;;
    *)
      empHrs=0 ;;
    esac
   totalWorkingHours=$((  $totalWorkingHours + $empHrs ))

done 
salary=$(( $totalWorkingHours * $EMP_RATE_PER_HR ))

 printf "\n"

