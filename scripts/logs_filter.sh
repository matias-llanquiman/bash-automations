#!/bin/bash

for log_file in "$@"; do
  if ! [ -f "$log_file" ]; then
    echo "$log_file does not exist."
    exit 1
  fi
  echo "--[$log_file]--"
  cat "$log_file" | grep -E -i "error|failed|err" | sort | uniq
  echo ""
done
