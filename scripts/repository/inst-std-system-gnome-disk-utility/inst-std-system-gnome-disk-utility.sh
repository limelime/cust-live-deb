#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install gnome-disk-utility

# Log
echo "${GV_LOG} * Install Partition Manager: gnome-disk-utility."

# Reference
# Tutorial: http://askubuntu.com/a/185827