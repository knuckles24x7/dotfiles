#!/bin/sh
CMD=''

if hash reattach-to-user-namespace 2>/dev/null; then
  CMD='reattach-to-user-namespace -l '
fi

if hash fish 2>/dev/null; then
  CMD=$CMD'fish'
else
  CMD=$CMD'bash'
fi

$CMD
