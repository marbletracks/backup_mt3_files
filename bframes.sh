#!/bin/bash
#
# set these values

THISYEAR=$(date +'%Y')

frame_source_dir=~/mt3/00010_002.dgn/00010_002_Take_11/00010_002_11_X1/

scp `find $frame_source_dir*.jpg -type f -mtime -1` b.rn:b.robnugen.com/art/marble_track_3/frames/$THISYEAR

ssh b.rn "~/scripts/create_thumbs.pl /home/thundergoblin/b.robnugen.com/art/marble_track_3/frames/$THISYEAR"
