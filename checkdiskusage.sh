#!/bin/bash
# This script checks disk usage and sends an alert if usage exceeds 80%

USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ $USAGE -gt 80 ]; then
  echo "Warning: Disk usage is above 80%! Current usage: $USAGE%"
fi
