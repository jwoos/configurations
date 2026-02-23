#!/usr/bin/env bash

function venv_setup() {
	if [[ ! -d dev_env ]]; then
		python3 -m venv dev_env
		source dev_env/bin/activate
		pip install -r requirements.txt
	fi

	source dev_env/bin/activate
}
