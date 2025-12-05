#!/bin/bash

# Get screen dimensions using AppleScript
screen_width=$(osascript -e 'tell application "Finder" to get bounds of window of desktop' | cut -d',' -f3 | tr -d ' ')
screen_height=$(osascript -e 'tell application "Finder" to get bounds of window of desktop' | cut -d',' -f4 | tr -d ' ')

# Calculate column width (1/4 of screen width)
column_width=$((screen_width / 4))

# URLs to open
urls=(
  "https://www.tiktok.com/foryou"
  "https://www.instagram.com/reels/"
  "https://www.youtube.com/shorts"
  "https://x.com/"
)

# Create and position all windows using AppleScript
osascript <<EOF
  tell application "Google Chrome"
    -- Create all windows first with their URLs and positions
    repeat with i from 0 to 3
      set url_to_open to item (i + 1) of {"${urls[0]}", "${urls[1]}", "${urls[2]}", "${urls[3]}"}
      set x_pos to $column_width * i

      -- Create new window with specific properties
      make new window with properties {bounds:{x_pos, 0, x_pos + $column_width, $screen_height}}
      set URL of active tab of front window to url_to_open
    end repeat

    activate
  end tell
EOF
