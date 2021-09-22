#!/bin/bash


# Skip first line of txt file
# Determine if password meets length, numerical, and character requirements
# If the password does meet requirements print password followed by "meets the password requirements"
# If the password does not meet requirements print password followed by "does not meet the password requirements"

awk '

NR>1 {          

    if(length($2) >= 8 && $2 ~ /[A-Z]/ && $2 ~ /[0-9]/) {

        print " "$2" - meets the password requirements"

    } else {

        print " "$2" - does not meet the password requirements"

    } 

}' usrpwords.txt

exit 0