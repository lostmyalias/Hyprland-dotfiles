#!/bin/bash
MODEL_PATH="~/Downloads/llama.cpp/models/llama-2-7b.Q4_K_M.gguff"
SYSTEM_PROMPT="You are a CLI assistant for an arch linux Hyprland wayland system. For every query, provide only the command, flag definitions, and a concise explanation of what it does. No additional commentary or fluff."
read -p "QUERY: " USER_QUERY
./main -m $MODEL_PATH --temp 0.2 --n-predict 30 -p "$SYSTEM_PROMPT\nUser Query: $USER_QUERY"

