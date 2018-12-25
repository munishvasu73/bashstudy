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

function backup_files {
	tar -tzf $1 | grep -v  /$ | wc -l
}

function backup_dir {
        tar -tzf $1 | grep /$ | wc -l
}	

tar -czf $output $input 2> /dev/null
src_file=$(total_files $input)
src_directory=$(total_directories $input)
tar_file=$(backup_files $output)
tar_dir=$(backup_dir $output)

echo " $src_file xxx $src_directory xxx $tar_file xxx $tar_dir"
echo "Backup of $input completed! Details about output file:"
ls -l $output

