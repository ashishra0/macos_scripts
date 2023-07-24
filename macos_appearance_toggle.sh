#!/bin/bash

# Check if dark mode is currently enabled
dark_mode_enabled=$(defaults read -g AppleInterfaceStyle 2>/dev/null)

if [ "$dark_mode_enabled" == "Dark" ]; then
  # Dark mode is enabled, so switch to light mode
  osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to false'
else
  # Dark mode is disabled, so switch to dark mode
  osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
fi

# Restart the Dock for the changes to take effect
killall Dock