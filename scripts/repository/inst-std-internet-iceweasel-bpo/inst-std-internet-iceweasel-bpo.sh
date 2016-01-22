#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install the latest Firefox from Debian Mozilla team through jessie-backports: http://mozilla.debian.net
dpkg -i pkg-mozilla-archive-keyring_1.1_all.deb
GF_ADD_SOURCE_LIST "deb http://mozilla.debian.net/ jessie-backports iceweasel-release"
apt-get update

apt-get -t jessie-backports -y --force-yes install iceweasel

# Insert Iceweasel in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-iceweasel.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Install flash plugin.
apt-get -y --force-yes install flashplugin-nonfree

# Log
echo "${GV_LOG} * Install the latest Firefox from Debian Mozilla team: $(firefox --version | grep Mozilla)."
echo "${GV_LOG} * Insert Iceweasel in Internet menu."
echo "${GV_LOG} * To update Adobe Flash Player: update-flashplugin-nonfree --install."
echo "${GV_LOG} * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/."


# Resource:
#   https://wiki.debian.org/Iceweasel
#   https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.548/install_flash_player_11_linux.x86_64.tar.gz