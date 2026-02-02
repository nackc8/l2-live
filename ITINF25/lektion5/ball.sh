#!/bin/bash

# BARA FÖR SKOJS SKULL. INGÅR INTE I KURSEN.

# exit by Ctrl + C

cleanup() {
	tput sgr0
	tput cnorm
	tput cup $(tput lines) 0
	echo
	trap - EXIT INT TERM
	exit
}

trap cleanup EXIT INT TERM

init() {
	lines=$(tput lines)
	cols=$(tput cols)

	row=$((RANDOM % lines ))
	column=$((RANDOM % cols ))

	row_vel=$(( (RANDOM % 2) * 2 - 1))
	column_vel=$(( (RANDOM % 2) * 2 - 1))

	tput sgr0
	tput civis
	tput clear
}

while true; do
	if (( ${lines:-unset} != $(tput lines) || ${cols:-unset} != $(tput cols) )); then
		init
	fi

	row=$((row + row_vel))
	column=$((column + column_vel))

	if (( $row < 0 || $row >= $(tput lines) )); then
		row_vel=$(( row_vel * - 1 ))
		row=$(( row + (row_vel * 2) ))
	fi

	if (( $column < 0 || $column >= $(tput cols) )); then
		column_vel=$(( column_vel * - 1 ))
		column=$(( column + (column_vel * 2) ))
	fi

	tput cup $row $column

	# set random non black (which has index zero) color and print a space
	printf '\e[48;5;%dm ' $(( (RANDOM % 255) + 1))

	sleep 0.03
done
