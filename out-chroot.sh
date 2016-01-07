#!/bin/bash
set -e
# Description: Get out of chroot environment.

CHROOT_DIR=$1

# Error Handling
  CMD_EXAMPLES=$(printf "%s\n%s\n" \
                        "  e.g. $0 <CHROOT_DIR>"\
                        "  e.g. $0 /path/to/chroot/"\
                )
  if [ ! -d "${CHROOT_DIR}" ]; then
    echo "Error: Chroot directory: ${CHROOT_DIR}: no such directory. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")
  

# Unmount everything.  
UMOUNT_CMD="umount -lf ${CHROOT_DIR}/sys ${CHROOT_DIR}/dev/pts ${CHROOT_DIR}/proc"
echo "${UMOUNT_CMD}"
/bin/bash -c "${UMOUNT_CMD}" || true


