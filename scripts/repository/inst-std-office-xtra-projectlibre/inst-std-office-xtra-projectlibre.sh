#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

PROJECT_LIBRE_DEB=projectlibre_1.6.2-1.deb
dpkg -i ${PROJECT_LIBRE_DEB}
 
# Log
echo "${GV_LOG} * Install ProjectLibre."
