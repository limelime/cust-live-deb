#!/bin/bash

mkdir live-default && cd live-default && lb config

### Add packages
mkdir -p config/package-lists

# Add virtualbox
echo "virtualbox-guest-dkms virtualbox-guest-x11" >> config/package-lists/my.list.chroot
lb config --linux-packages "linux-image linux-headers"