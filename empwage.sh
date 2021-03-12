
#! /bin/bash  -x
 
# Constant 
 IS_PRESENT=1

#Variable
empCheck=$(( RANDOM % 2))

# == -) -eq / < -)
if [ $IS_PRESENT -eq $empCheck ]
then
  echo "Employee is present"
else
  echo "Employee is absent"
fi 

