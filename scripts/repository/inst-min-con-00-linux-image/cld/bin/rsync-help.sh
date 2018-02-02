#!/bin/bash
set -e
# Description: List helpful commands for rsync
#   Highlight comment: ./rsync-help.sh | grep -E '^|#.*'

cat << EndOfTarHelp
  # rsync always check integrity of NEWLY files copied except existing files, it will only size and timestamp

  
  rsync -r source destination
  
EndOfTarHelp