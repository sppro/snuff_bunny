#!/usr/bin/env bash
# File: countdays.sh

days=(Mon Tue Wed Thu Fri Sat Sun)

for day in ${days[*]}
do
	echo "$day = $(egrep -c $day gitLog.txt)"
done
