#!/bin/bash

while true; do # Declare loop that will only end with specified integers
    read -p 'Enter a two digit numeric code (integer): ' int # Prompt to user for integer

    if [[ $int -eq 20 ]] || [[ $int -eq 40 ]]; then # Test user input is valid (20 or 40)
        echo "A valid input has been made!"
        break    # Terminate script if valid input is entered
    else 
        echo "Code invalid!" # Invalid input redisplays initial prompt
    fi
done

exit 0