#!/bin/bash

DATE=$(date +"%Y_%b_%d")

AUDIO=$1

#  thank you https://hamelot.io/visualization/using-ffmpeg-to-convert-a-set-of-images-into-a-video/

ffmpeg -y -framerate 10 -start_number 873 -i "/home/thunderrabbit/.stopmotion/frames/%08d.jpg" -i "$AUDIO" -codec:v mpeg4 -b:v 6k ${DATE}_video.mp4


# this line is from Stopmotion settings
# ffmpeg -y -framerate $FRAMERATE -i "$IMAGEPATH/%06d.jpg" -codec:v mpeg4 -b:v 6k "$VIDEOFILE"

