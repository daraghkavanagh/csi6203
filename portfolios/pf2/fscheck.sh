#!/bin/bash

read -p 'Please enter a file name: '            # Prompt user for file name

function getprop {
    file_name=$REPLY;                           # Assign reply to above prompt to 'file_name'
    word_count=$(wc -w < $file_name);              # Assign file word count to 'word_count'; only print the number of words and not lines and bytes
    size=$( du -h $file_name | cut -f1);              # Assign file size to 'size'; print in human readable format; cut file_name printed with file size
    last_modified=$(date +"%d-%m-%y %T" -r $file_name);   # Assign last modified time of file to 'last_modified'; print in user controlled format
    echo "The file $file_name contains $word_count words and is $size in size and was last modified at $last_modified";     # Echo results to terminal
}

getprop $REPLY;         # Function call

exit 0