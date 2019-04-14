#!/bin/bash

PERCENT=${1:-50}

for F in `ls -1 *.jpg`;
do
		echo "shrinking $F to $PERCENT%";
		OUT=`basename -s .jpg $F`;
		convert $F -resize $PERCENT% $OUT.s.jpg;
done;
