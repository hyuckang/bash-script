#!/bin/bash

# 작업할 로그 날짜 date - 3
log_date_1=`date -d "-3 days" "+%Y%m%d"`   # YYYYMMDD
log_date_2=`date -d "-3 days" "+%Y-%m-%d"` # YYYY-MM-DD

# 로그 디렉터리 위치
log_dir=(
    "/home/hyuckang/TEST/GZIP_test"
)

# 로그 이름 포맷
log_name=(
    "*.out-${log_date_1}"
    "*access.${log_date_2}.log"
    "localhost.${log_date_2}.log"
)

for job_dir in "${log_dir[@]}"; do   
    
    # 작업 디렉터리로 이동
    cd $job_dir
    
    # 작업 디렉터리에서 로그를 찾아서 gzip으로 압축
    find ./ -name ${log_name[0]} -exec gzip {} \;
    find ./ -name ${log_name[1]} -exec gzip {} \;
    find ./ -name ${log_name[2]} -exec gzip {} \;

done
