#!/bin/bash

workspaces=$(xfconf-query -c xfwm4 -p /general/workspace_names | tail -n +2 | tr '\n' ' ')
active_workspace=$(xprop -root -notype _NET_CURRENT_DESKTOP | awk '{print $3}')
workspaces_array=($workspaces)

output=""
for workspace_id in "${!workspaces_array[@]}"; do
  if [[ $workspace_id == "$active_workspace" ]]; then
    output+="●\n"
    else
      output+="○\n"
    fi
done

echo -e "$output"
