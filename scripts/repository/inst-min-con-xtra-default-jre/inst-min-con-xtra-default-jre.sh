#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y <your-package>  # Explicitly download dependent packages 

# Install default-jre.
apt-get -y install default-jre


# Log
echo "${GV_LOG} * Install JAVA JRE: default-jre."
echo "${GV_LOG} * To install JAVA binary: https://wiki.debian.org/JavaPackage."