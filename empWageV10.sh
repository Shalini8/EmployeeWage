#! /bin/bash -X  
 
# Constant 
 IS_PRESENT_FULLTIME=1
 IS_PRESENT_PARTTIME=2
 EMP_RATE_PER_HR=20
 MAX_WORKING_DAYS=20  
 MAX_WORKING_HOURS=20

#variable 
totalWorkingHours=0
totalWorkingDays=0
 
declare -A dailywages
function getWorkingHours(){
   local empCheck=$1
	local empHrs=0
	case $empCheck  in
        $IS_PRESENT_FULLTIME )
         empHrs=8;;
         $IS_PRESENT_PARTTIME)
         empHrs=4 ;;
       *)
         empHrs=0 ;;
  esac
echo $empHrs   

}

function calwageForDay(){
	local empHrs=$1 
	echo $(( $EMP_RATE_PER_HR * $empHrs ))
}

while [ $totalWorkingDays -lt $MAX_WORKING_DAYS ]  && [ $totalWorkingHours -lt  $MAX_WORKING_HOURS ]
 do
#VARIABLE 
  empCheck=$(( RANDOM % 3 ))
     totalWorkingDays=$(( $totalWorkingDays+1 ))

 empHrs="$( getWorkingHours $empCheck )"

 totalWorkingHours=$(($totalWorkingHours + $empHrs))
      
 dailywages[ DAY $totalWorkingDays ]="$( calwageForDay $empHrs)"

done 
echo ${!dailywages[*]}
echo ${dailywages[*]}

salary=$(( $totalWorkingHours * $EMP_RATE_PER_HR ))

 


