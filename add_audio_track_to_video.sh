#!/bin/bash

VIDEO=$1
AUDIO=$2
OUTNAME=$(basename $VIDEO)

if [ -z "$AUDIO" ]
  then
    echo "Usage: $0 <video file path> <audio file path>"
    exit
fi

# https://superuser.com/a/590210/63968

ffmpeg -i "$VIDEO" -i "$AUDIO" -c copy -map 0:v:0 -map 1:a:0 "audible_$OUTNAME"

# mv "$VIDEO" "$VIDEO.bak"
# mv "audible_$VIDEO" "$VIDEO"

