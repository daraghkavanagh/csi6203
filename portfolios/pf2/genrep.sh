#!/bin/bash

pre="<tr><td>"              
post="<\/td><\/tr>"
mid="<\/td><td>"                        # Set html tags to remove later

echo "Attacks      Instances(Q3)"             # Echo headings of table in html file 


cat attacks.html | grep "<td>" | sed -e "s/^$pre//g; s/$post$//g; s/$mid/ /g" | awk '{ sum=($2+$3+$4); {printf $1 } {printf "\t     "} {print sum} }' 
# Print sum of each row contained in attacks.html to screen without html tags along with the row title

exit 0