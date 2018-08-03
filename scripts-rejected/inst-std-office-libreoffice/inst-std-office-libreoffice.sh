#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install Office Suite.
apt-get -y --force-yes install libreoffice-writer
apt-get -y --force-yes install libreoffice-calc
apt-get -y --force-yes install libreoffice-impress
apt-get -y --force-yes install libreoffice-draw
apt-get -y --force-yes install libreoffice-base
apt-get -y --force-yes install libreoffice-math

# Insert LibreOffice menu in Office
sed -i "/Office\">/ r jwmrc-menus-office-libreoffice.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"
 
# Log
LO_VERSION=$(libreoffice --version | head -n1)
echo "${GV_LOG} * Install ${LO_VERSION}."
echo "${GV_LOG} * Install Office Suite: Word processor."
echo "${GV_LOG} * Install Office Suite: Spreadsheet."
echo "${GV_LOG} * Install Office Suite: Presentation."
echo "${GV_LOG} * Install Office Suite: Drawing."
echo "${GV_LOG} * Install Office Suite: Database."
echo "${GV_LOG} * Install Office Suite: Equation."
echo "${GV_LOG} * https://wiki.documentfoundation.org/ReleasePlan"

# REJECTION: Too old.
#  * Running inst-std-office-libreoffice.sh ...
#    * After this operation, 273 MB of additional disk space will be used.
#    * After this operation, 42.4 MB of additional disk space will be used.
#    * After this operation, 18.0 MB of additional disk space will be used.
#    * After this operation, 9,899 kB of additional disk space will be used.
#    * After this operation, 1,497 kB of additional disk space will be used.
#    * Install LibreOffice 4.3.3.2 430m0(Build:2).
#    * Install Office Suite: Word processor.
#    * Install Office Suite: Spreadsheet.
#    * Install Office Suite: Presentation.
#    * Install Office Suite: Drawing.
#    * Install Office Suite: Database.
#    * Install Office Suite: Equation.
#    * https://wiki.documentfoundation.org/ReleasePlan
#    * Disk size = 2687820K. Space Used = 434064K.

#  * Running inst-std-office-libreoffice-bp.sh ...
#    * After this operation, 287 MB of additional disk space will be used.
#    * After this operation, 43.8 MB of additional disk space will be used.
#    * After this operation, 17.0 MB of additional disk space will be used.
#    * After this operation, 9,910 kB of additional disk space will be used.
#    * After this operation, 1,610 kB of additional disk space will be used.
#    * Install LibreOffice 5.0.2.2 00m0(Build:2).
#    * Install Office Suite: Word processor.
#    * Install Office Suite: Spreadsheet.
#    * Install Office Suite: Presentation.
#    * Install Office Suite: Drawing.
#    * Install Office Suite: Database.
#    * Install Office Suite: Equation.
#    * https://wiki.documentfoundation.org/ReleasePlan
#    * Disk size = 2710340K. Space Used = 456568K.