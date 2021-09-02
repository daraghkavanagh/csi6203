#!/bin/bash

dirname=$1          # Directory argument variable
declare files_contain_data        # Declare variale: files that contain data
declare files_contain_no_data       # Declare variale: files that contain no data
declare non_empty_directories       # Declare variale: non-empty directories
declare empty_directories        # Declare variale: empty directories

for file in $(ls -A .); do      
    if [[ -f $file ]]; then         # See if file is a regular file
        if [[ -s $file ]]; then     # Check if file contains no data
            files_contain_data=$(( $files_contain_data + 1 ))
        else
            files_contain_no_data=$(( $files_contain_no_data + 1 )) # If file does not contain data add to files_contain_no_data count
        fi

        elif [[ -d $file ]]; then                   
        if [[ $(ls -A $file) == "" ]]; then         # Check if file is a directory
            empty_directories=$(( $empty_directories + 1 ))     # Check if directory is empty
        else
            non_empty_directories=$(( $non_empty_directories + 1 )) # If directory is not empty add to non_empty_directories count
        fi
    fi
done

echo "The $dirname directory contains: "                  # Display information gathered by the script to terminal 
echo "$files_contain_data files that contain data"
echo "$files_contain_no_data files that are empty"
echo "$non_empty_directories non-empty directories"
echo "$empty_directories empty directories"


exit 0