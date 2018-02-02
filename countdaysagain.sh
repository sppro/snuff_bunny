#!/usr/bin/env bash
# File: countdays.sh

days=(Mon Tue Wed Thu Fri Sat Sun)
winners=()
num=0

for day in ${days[*]}
do

	occurrences=$(egrep -c $day gitLog.txt)

	if [[ $occurrences -gt $num ]]
	then
		winners=()
		winners+=($day)
		let num=$occurrences

	elif [[ $occurrences -eq $num ]]
	then
		winners+=($day)
	fi
done

for winner in ${winners[*]}
do
	echo "$winner = $num"
done
