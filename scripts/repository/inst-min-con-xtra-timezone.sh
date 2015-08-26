#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Setup debconf parameters
export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true DEBCONF_DEBUG=developer

# Manually write timezone string to /etc/timezone because 'dpkg-reconfigure tzdata' non-interactive doesn't work. But interactive does.
echo "America/Montreal"> /etc/timezone

# Set timezone
debconf-set-selections -v ${GV_SETTINGS_DIR}/tzdata-config.seed
dpkg-reconfigure tzdata

# Log
echo "${GV_LOG} * Set time zone to EST (America/Montreal)."

# Debug
# cat /etc/timezone
# ls /etc/localtime

# Reference
# http://unix.stackexchange.com/a/16197
# Preseed doesn't work: https://lists.debian.org/debian-user/2007/10/msg00480.html
#                       https://lists.debian.org/debian-boot/2007/12/msg00506.html