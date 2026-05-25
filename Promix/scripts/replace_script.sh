#!/usr/bin/env bash

if [ -n "${XDG_DATA_HOME}" ]; then
  LOCAL="${XDG_DATA_HOME}"
else
  LOCAL="${HOME}/.local/share"
fi

function replaceall {
	cd "$LOCAL/icons/Promix/scripts"
	sh ./change_all_folders.sh
}

replaceall
