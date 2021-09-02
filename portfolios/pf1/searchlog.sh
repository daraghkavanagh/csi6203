#!/bin/bash

read -p 'Please enter the pattern you would like to search for: ' pattern
#read -p 'Would you like a whole word match or any match on the line? (Type W for whole word match or A for any word match): '
#read -p 'Would you like to do an inverted match? (Type Y for yes or N for no): '



# Whole word match & inverted match
if [[ $(cat access_log.txt | grep -wciv $pattern ) ]]; then
    echo "$(cat access_log.txt | grep -wciv $pattern ) matches found"
    echo "$(cat access_log.txt | grep -n $pattern )"
else
    echo "No matches found"
fi

# Whole word match & not inverted match
if [[ $(cat access_log.txt | grep -wci $pattern ) ]]; then
    echo "$(cat access_log.txt | grep -wci $pattern ) matches found"
    echo "$(cat access_log.txt | grep -n $pattern )"
else
    echo "No matches found"
fi

# Not whole word match & inverted match 
if [[ $(cat access_log.txt | grep -vci $pattern ) ]]; then
    echo "$(cat access_log.txt | grep -vci $pattern ) matches found"
    echo "$(cat access_log.txt | grep -n $pattern )"
else
    echo "No matches found"
fi

# Not whole word match & not inverted match
if [[ $(cat access_log.txt | grep -ci $pattern ) ]]; then
    echo "$(cat access_log.txt | grep -ci $pattern ) matches found"
    echo "$(cat access_log.txt | grep -n $pattern )"
else
    echo "No matches found"
fi

# -w = Select only those lines containing matches that form whole words
# -v = Invert the sense of matching, to select non-matching lines

exit 0