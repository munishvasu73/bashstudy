#!/bin/bash
#Author: Munish 
#Date: 25/12/18
#Purpose: backup for user and count no of files and directory

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tgz

function total_files {
	find $1 -type f | wc -l
}

function total_directories {
	find $1 -type d | wc -l
}
tar -czf $output $input 2> /dev/null
echo -n "Files to be included:"
total_files $input
echo -n "Directories to be included:"
total_directories $input

echo "Backup of $input completed! Details about output file:"
ls -l $output

