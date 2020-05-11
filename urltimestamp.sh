#!/bin/bash
cat access.log
cat access.log | awk '{print $4 $11}' | grep -E "(http|https)://[a-zA-Z0-9./?=_-]*" 
cat access.log | awk '{print $4 $11}' | grep -E "(http|https)://[a-zA-Z0-9./?=_-]*" | sort -c
cat access.log | awk '{print $4 $11}' | grep -E "(http|https)://[a-zA-Z0-9./?=_-]*" | sort | wc -l
cat access.log | awk '{print $4 $11}' | grep -E "(http|https)://[a-zA-Z0-9./?=_-]*" | sort | uniq -c | sort -nr | head -4