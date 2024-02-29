#!/bin/bash

seconds=$1

if [ $seconds -gt 3600 ]; then
    hours=$((seconds / 3600))
    minutes=$((seconds / 60))
    minutes_beyond=$((minutes % 60))
    seconds_beyond=$((seconds % 60))
    echo "$hours:$minutes_beyond:$seconds_beyond"
elif [ $seconds -gt 60 ]; then
    minutes=$((seconds / 60))
    seconds_beyond=$((seconds % 60))
    echo "$minutes:$seconds_beyond"
else
    echo $seconds
fi
