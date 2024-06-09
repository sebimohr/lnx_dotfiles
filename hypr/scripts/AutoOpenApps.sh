#!/bin/bash

# Define the applications to be opened
declare -a apps=("alacritty" "code" "firefox" "nautilus")

# Loop over the applications
for i in "${!apps[@]}"; do
  # Open the application
  ${apps[$i]} &

  # Wait for the application to open
  sleep 2

  # Move the application to the desired workspace
  hyprctl dispatch movetoworkspacesilent workspace $((i+1))
done

