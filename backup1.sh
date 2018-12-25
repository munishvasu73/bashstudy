#!/bin/bash
#Author: Munish 
#Date: 25/12/18
#Purpose: backup for user

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tgz

tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about output file:"
ls -l $output

