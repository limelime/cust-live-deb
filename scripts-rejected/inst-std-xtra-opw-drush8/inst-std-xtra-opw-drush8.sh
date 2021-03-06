#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install composer.
yes | cp -v composer.phar /usr/local/bin/composer
rm -f /usr/bin/composer
ln -s /usr/local/bin/composer /usr/bin/composer


# Install Drush
mkdir -p /usr/local/src/drush
tar -xvzf drush-8.0.0-rc1.tar.gz --strip-components=1 -C /usr/local/src/drush
cd /usr/local/src/drush
rm -f /usr/bin/drush
ln -s /usr/local/src/drush/drush /usr/bin/drush
composer install
cd -


# Log
echo "${GV_LOG} * Install $(drush --version) to manage Drupal."
echo "${GV_LOG} * See https://www.linode.com/docs/websites/cms/drush-drupal."
echo "${GV_LOG} * Further setting is needed. See https://wiki.debian.org/drush."

# Reference:
#   -Download at https://github.com/drush-ops/drush/releases
#   -https://www.linode.com/docs/websites/cms/drush-drupal

