#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install udevil to get devmon. Need version 0.4.4 or later to support exfat.
GF_ADD_SOURCE_LIST live "deb http://http.debian.net/debian jessie-backports main contrib non-free"
apt-get update
apt-get -t jessie-backports -y install udevil

# Run devmon at startup.
yes | cp -av ./cld/  /usr/local

# Log
UDEVIL_VER=$(udevil -h | head -n 1)
echo "${GV_LOG} * Install ${UDEVIL_VER}."
echo "${GV_LOG} * Install udevil to auto mount USB devices."
echo "${GV_LOG} * Set devmon to auto start on startup."
echo "${GV_LOG} * Need ntfs-3g driver to be able to read and write ntfs partition."
echo "${GV_LOG} * Need exfat-fuse to be able to read and write exfat partition."

