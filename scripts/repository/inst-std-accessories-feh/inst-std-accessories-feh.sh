#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install feh
	apt-get -y install feh

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
	echo "${GV_LOG} * Install command line image viewer: feh."
