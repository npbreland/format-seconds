#!/bin/bash

seconds=$(</dev/stdin)

if [ $seconds -gt 3600 ]; then
    hours=$((seconds / 3600))
    minutes=$((seconds / 60))
    minutes_beyond=$((minutes % 60))
    seconds_beyond=$((seconds % 60))
    printf "%02d:%02d:%02d\n" $hours $minutes_beyond $seconds_beyond
elif [ $seconds -gt 60 ]; then
    minutes=$((seconds / 60))
    seconds_beyond=$((seconds % 60))
    printf "%02d:%02d\n" $minutes $seconds_beyond
else
    echo $seconds
fi
