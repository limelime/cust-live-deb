#!/bin/bash
set -e
# Description: List helpful commands for mysql
#   Highlight comment: ./mysql-help.sh | grep -E '^|#.*'

cat << EndOfMysqlHelp
  # Log in mysql server
  mysql --user=root mysql
  
  # View users
  select user,host from mysql.user;

  # Create root2 user.  
  CREATE USER 'root2'@'localhost' IDENTIFIED BY 'password';
  GRANT ALL PRIVILEGES ON *.* TO 'root2'@'localhost' WITH GRANT OPTION;
  FLUSH PRIVILEGES;
  
  
EndOfMysqlHelp