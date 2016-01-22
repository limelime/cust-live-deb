#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


### Install libtext-iconv-perl so that you can use iconv to convert to other encoding.
apt-get -y --force-yes install libtext-iconv-perl


# Log
echo "${GV_LOG} * Install libtext-iconv-perl so that you can use iconv to convert to other encoding."


