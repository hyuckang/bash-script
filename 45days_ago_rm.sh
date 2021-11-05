#!/bin/bash

job_dir="/web/log"
rm_date=`date -d '45 days ago' +'%Y%m%d'`

echo "job_dir : $job_dir"
echo "rm_date : $rm_date"

cd $job_dir
rm -rf $rm_date
