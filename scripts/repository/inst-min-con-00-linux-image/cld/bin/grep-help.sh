#!/bin/bash
set -e
# Description: List helpful commands for grep
#   Highlight comment: ./grep-help.sh | grep -E '^|#.*'

cat << EndOfGrepHelp
  # Grep 3 digits.
  echo 1459mmmm34mm | grep -E [0-9]{3}
  echo 2786mmmm34mm | grep -E [[:digit:]]{3}
  
  # Grep either pattern1 or pattern2
  grep -e '(pattern1)|(pattern2)'
  grep '\(pattern1\)\|\(pattern2\)'
  
EndOfGrepHelp