#!/usr/bin/env bash

check_commands() {
	local arr=("$@")
	for c in "${arr[@]}"; do
		if ! command -v $c >/dev/null 2>&1; then
			echo "$1 must be available in path"
			exit 1
		fi
	done
}

check_directory() {
	if [[ ! -d $1 ]]; then
		echo "$1 is not a valid directory"
		exit 1
	fi
}

check_file() {
	if [[ ! -f $1 ]]; then
		echo "$1 is not a valid file"
		exit 1
	fi
}
