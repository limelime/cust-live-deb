#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install default-jre

# Log
echo "${GV_LOG} * Install JAVA JRE: default-jre."


#  tzdata version conflict with Debian update repository.
# apt-get -y --force-yes install default-jre
# apt-get -y --force-yes install default-jre-headless
# apt-get -y --force-yes install openjdk-7-jre-headless
# apt-get -y --force-yes install tzdata-java
#   # Depends: tzdata (= 2016c-0+deb8u1) but 2016d-0+deb8u1 is to be installed
# apt-get -y --force-yes install tzdata=2016c-0+deb8u1
