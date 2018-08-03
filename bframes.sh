#!/bin/bash
# 
# set these values

frame_source_dir=~/mt3/00010_002.dgn/00010_002_Take_09/00010_002_09_X1/

find $frame_source_dir*.jpg -type f -mtime -1 -exec scp {} b.rn:mt3/frames/2018 \;


