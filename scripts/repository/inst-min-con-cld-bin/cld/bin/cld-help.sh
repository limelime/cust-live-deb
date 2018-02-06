#!/bin/bash
set -e
# Description: Display helps.

topic=$1-help.txt
doc_dir=$(readlink -ev /usr/local/cld/doc/)

help_file="${doc_dir}/${topic}"

if [ ! -f "${help_file}" ]; then
  echo "$0: Error: ${help_file} no such file. Aborted!"
  exit 1;
fi

cat "${help_file}"
