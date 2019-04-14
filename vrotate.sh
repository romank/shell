#!/usr/bin/env bash

# 0 = 90CounterCLockwise and Vertical Flip (default)
# 1 = 90Clockwise
# 2 = 90CounterClockwise
# 3 = 90Clockwise and Vertical Flip

#TOOL=avconv
TOOL=ffmpeg

for VID in `ls -1 *.mp4`;
do
		echo $VID;
		$TOOL -i $VID -vf "transpose=2,transpose=2" -acodec copy r_$VID
    # $TOOL -i $VID -vf "vflip,hflip" -acodec copy r_$VID
done;
