#!/bin/bash
set -e

# Description: Download the VBoxGuestAdditions.iso.

# http://download.virtualbox.org/virtualbox/

URL=http://download.virtualbox.org/virtualbox/4.3.4/VBoxGuestAdditions_4.3.4.iso
URL=http://download.virtualbox.org/virtualbox/5.0.10/VBoxGuestAdditions_5.0.10.iso


# Download ISO if not already exists.
ISO_FILE=$(basename $URL)
if [ ! -f "${ISO_FILE}" ]; then
  wget "${URL}"
fi

# Create symbolic link.
rm -f VBoxGuestAdditions.iso
ln -s VBoxGuestAdditions_4.3.4.iso VBoxGuestAdditions.iso