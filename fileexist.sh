#!/bin/bash -x
filename=$1
if [ -f "$filename" ]; 
then
echo "File exists"
else
echo "File does not exist"
mkdir file
fi
