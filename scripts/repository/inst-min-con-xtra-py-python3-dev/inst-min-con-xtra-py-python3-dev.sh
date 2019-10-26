#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install python3-dev.
    #apt-get -y install libexpat1=2.2.6-2+deb10u1
    #apt-get -y install libexpat1=2.2.6-2
	apt-get -y install python3-dev


# Log
	echo "${GV_LOG} * Install python3-dev."
	echo "${GV_LOG} * Require for: tulipy"

