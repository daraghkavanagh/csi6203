#!/bin/bash

declare -a ass1=(12 18 20 10 12 16 15 19 8 11)      # Declare ass1 array
declare -a ass2=(22 29 30 20 18 24 25 26 29 30)     # Declare ass2 array

for i in {0..9}         # Loop through the array 
do
    studentNum=$((i+1))                   # Assign the student numbers
    sum=$((ass1[$i]+ass2[$i]))                  # Add each students two results
    echo "Student_$studentNum Result: $sum"       # Echo results to terminal
done

exit 0