#!/bin/bash

# Get the current workspace
ACTIVE_WS=$(hyprctl activeworkspace -j | jq -r '.id')

# Get the active monitor
ACTIVE_MONITOR=$(hyprctl activeworkspace -j | jq -r '.monitor')

# Get the list of monitors
MONITORS=($(hyprctl monitors -j | jq -r '.[].name'))

# Determine the target monitor (swap to the other monitor)
if [[ "$ACTIVE_MONITOR" == "${MONITORS[0]}" ]]; then
    TARGET_MONITOR="${MONITORS[1]}"
else
    TARGET_MONITOR="${MONITORS[0]}"
fi

# Move the active workspace to the other monitor
hyprctl dispatch moveworkspacetomonitor "$ACTIVE_WS" "$TARGET_MONITOR"

