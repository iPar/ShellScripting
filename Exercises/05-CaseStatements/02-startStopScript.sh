#!/bin/bash

# This script starts and stops an application called sleep-walking-server.
# It accepts "start" and "stop" as arguments and provides an error message
# and terminates with an exit status of 1 if anything else is received.
# Be sure to copy the sleep-walking-server file into /tmp and
# "chmod 755 /tmp/sleep-walking-server"

case "$1" in
  [sS][tT][aA][rR][tT])
    /tmp/sleep-walking-server &
    ;;
  [sS][tT][oO][pP])
    kill -KILL $(cat /tmp/sleep-walking-server.pid)
    ;;
  *)
    echo "Usage: $0 start|stop"
    exit 1
    ;;
esac
