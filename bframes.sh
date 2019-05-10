#!/bin/bash
# 
# set these values

frame_source_dir=~/mt3/00010_002.dgn/00010_002_Take_10/00010_002_10_X1/

scp `find $frame_source_dir*.jpg -type f -mtime -1` b.rn:mt3/frames/2019

ssh b.rn '~/scripts/create_thumbs.pl'
