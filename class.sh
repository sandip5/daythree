#!/bin/bash
for file in `find *.txt -mtime -2`;
do 
	fileName=`echo $file | awk -v date="$(date +'%d%m%Y')" -F. '{$2=date;$3=".txt";print $1"-"$2$3}'`;
	echo $fileName;
done
