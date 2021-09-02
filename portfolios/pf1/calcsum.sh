#!/bin/bash

sum=$(( $1 + $2 + $3 )) # Sum calculation of integer arguments entered

if [ $sum -le 30 ]; then # If sum of equation is less than or equal to 30
   echo "The sum of $1 and $2 and $3 is $sum" 
else [ $sum -gt 30 ]; # If sum of equation is greater than 30
   echo "Sum exceeds maximum allowable" 
fi

exit 0