#!/bin/bash
cat access.log
cat access.log | awk '{print $4,$5,$9,$10}' 
cat access.log | awk '{print $4,$5,$9,$10}' | sort -nr
cat access.log | awk '{print $4,$5,$9,$10}' | sort -nr | wc -l
cat access.log | awk '{print $4,$5,$9,$10}' | uniq -c | sort -nr | head -4
