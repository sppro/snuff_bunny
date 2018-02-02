#!/usr/bin/env bash
# File: countdays.sh

days=(Mon Tue Wed Thu Fri Sat Sun)
winners=()
num=0

for day in ${days[*]}
do

	occurences=$(egrep -c $day gitLog.txt)

	if [[ $occurences -gt $num ]]
	then
		winners=()
		winners+=($day)
		let num=$occurences

	elif [[ $occurences -eq $num ]]
	then
		winners+=($day)
	fi
done

for winner in ${winners[*]}
do
	echo "$winner = $num"
done
