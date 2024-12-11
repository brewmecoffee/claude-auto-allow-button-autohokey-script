# Auto Button Clicker for Claude MCP (Model Context Protocol) Popups

The script can be generally used for auto clicking other buttons too, based on the images.
An AutoHotkey script that automatically detects and clicks a specific button on popups by matching an image pattern. The script runs persistently in the background and checks for the specified button every 2 seconds.

## Features

- Continuously monitors the screen for a specific button image
- Performs a natural-looking click interaction when the button is found
- Preserves the original mouse position after clicking
- Works across the entire screen
- Minimal system resource usage with a 2-second check interval

## Prerequisites

- [AutoHotkey](https://www.autohotkey.com/) v1.1 or later
- A screenshot of the target button saved as an image file

## Setup

1. Install AutoHotkey if you haven't already
2. Clone this repository or download the script
3. Take a screenshot of the button you want to auto-click
4. Update the `ImagePath` variable in the script to point to your button image:
```autohotkey
ImagePath := "C:\Users\admin\Documents\scripts\images\allow_for_this_chat.png"
```

## How It Works

The script:
1. Searches the entire screen for the specified button image every 2 seconds
2. When found, calculates the center point of the button
3. Performs a natural mouse movement pattern:
   - Moves to the button center
   - Slightly moves away
   - Moves back to center
   - Clicks
4. Returns the mouse to its original position

## Configuration

- `SetTimer, CheckForButton, 2000` - Adjust the 2000 to change the check frequency (in milliseconds)
- `CenterOffsetX` and `CenterOffsetY` - Adjust these values if your button has different dimensions
- Sleep timings can be adjusted by modifying the `Sleep` values

## Important Notes

- The script uses screen coordinates, so it will work regardless of window position
- Make sure your button screenshot is clear and distinctive to avoid false matches
- The script runs continuously until manually stopped

## Usage

1. Start the script by double-clicking the .ahk file
2. The script will run in the background (icon appears in system tray)
3. To stop the script, right-click the AutoHotkey icon in the system tray and select "Exit"

## License

This project is open source and available under the MIT License.

## Contributing

Feel free to submit issues and enhancement requests!
