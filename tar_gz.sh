#!/bin/bash

# tar와 gz으로 압축하는 스크립트
# 1. 압축할 디렉터리 이름 입력
# 2. tar와 gz으로 압축 후 디렉터리 삭제

echo "---------------------------------"
echo "Input directory_names to compressed with tar and gzip"
echo "ex) 20210817 / 202108* / 2021080?"
echo -n "-> "
read directory_names


echo "---------------------------------"
directory_lists=`find . -name "${directory_names}"`
echo "Compress the directories below?"
echo "${directory_lists}"

echo "---------------------------------"
echo "input Y or N"
echo -n "-> "
read answer

if [ $answer = "Y" ]
then
        for dir in "${directory_lists[@]}"; do
                tar -zcvf $dir.tar.gz $dir && rm -rf $dir
        done
fi
