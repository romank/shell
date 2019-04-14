#!/usr/bin/env bash

ENLIGHTENMENT_PID=`ps -C enlightenment | tail -1 | awk '{print $1;}'`

if [ $ENLIGHTENMENT_PID -gt 0 ];
then
    echo "PID found. Segfaulting $ENLIGHTENMENT_PID"
else
    echo "No PID found for E. Exiting ..."
    exit 1;
fi

kill -11 $ENLIGHTENMENT_PID
echo "Done."
