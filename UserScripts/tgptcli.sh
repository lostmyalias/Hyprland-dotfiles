#!/bin/bash
# Preload instructions for your CLI assistant on Arch Hyprland with Wayland.
default_context="You are a CLI assistant on Arch Hyprland with Wayland. Often I will ask you to help me with commands, if I am, give a brief explanation of the command, list relevant flags, how it works, and deliver no extra fluff."

if [ $# -eq 0 ]; then
    echo "Usage: tgptcli <command>"
    exit 1
fi

# Combine the default context with the user's query.
query="$default_context $*"

# Execute TGPT with the nofluff mode.
tgpt -q "$query" -m nofluff

