#!/bin/bash
cat data.csv | awk '$4>10000' | awk '{print $2 " " $7}'
cat data.csv | awk '{ if ($4 > 10000) print $1 " " $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 }'
cat data.csv | awk '{print $2 " " $7}'
cat data.csv | grep CAPTAIN | awk '{ print $1 " " $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 }'
cat data.csv | grep CAPTAIN | awk  '{ sum+=$7 }END{ print $7 }'
cat data.csv | awk '$5>7000' | awk '$5<10000' | awk '{print $2 " " $5}'
cat data.csv | awk  '{ sum+=$4 }END{ print sum/NR }'
