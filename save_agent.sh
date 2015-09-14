#!/bin/sh
SSHVARS="SSH_CLIENT SSH_TTY SSH_AUTH_SOCK SSH_CONNECTION DISPLAY"

for var in ${SSHVARS} ; do
  echo "tmux setenv -g $var \"$(eval echo '$'$var)\""
  echo "export $var=\"$(eval echo '$'$var)\""
done 1>$HOME/.ssh/latestagent
