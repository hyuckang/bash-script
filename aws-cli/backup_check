#!/bin/bash

profiles=(
    "aws_acoount1"
    "aws_acoount2"
    "aws_acoount3"
)


for profile in "${profiles[@]}";
do       
    check_account=`echo $profile | cut -d '_' -f2`
    failed_cnt=`aws backup list-backup-jobs --profile $profile --output text --by-state FAILED | wc -l`
    
    echo "$check_account failed count : $failed_cnt"

done
