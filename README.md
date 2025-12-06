# Claude Brainrot

Automatically open TikTok, Instagram Reels, YouTube Shorts, and X in separate Chrome windows whenever Claude generates a response.

Check out [Clad Labs](https://www.cladlabs.ai/), which I've since learned is a very similar thing :)

## What it does

Every time Claude Code generates a response, this script:
- Opens 4 Chrome windows side-by-side
- Each window takes up 1/4 of your screen
- Loads TikTok, Instagram Reels, YouTube Shorts, and X
- When you stop Claude, all Chrome windows close automatically

## Prerequisites

- macOS
- Google Chrome
- Claude Code

## Installation

1. Clone this repo:
```bash
git clone https://github.com/yourusername/claude-brainrot.git
cd claude-brainrot
```

2. Make the script executable:
```bash
chmod +x open-brainrot.sh
```

3. Copy the hook configuration to your Claude settings:
```bash
# Update the path in .claude/settings.json to match where you cloned the repo
# Then merge it with your existing ~/.claude/settings.json
```

4. Update the script path in `.claude/settings.json`:
   - Change `/path/to/claude-brainrot/open-brainrot.sh` to the actual path where you cloned this repo

5. Copy the hooks from `.claude/settings.json` to your `~/.claude/settings.json`

## Usage

Just use Claude Code normally! Every response will trigger the brainrot windows.

## Customization

Edit the `urls` array in [open-brainrot.sh](open-brainrot.sh) to change which sites open:

```bash
urls=(
  "https://www.tiktok.com/foryou"
  "https://www.instagram.com/reels/"
  "https://www.youtube.com/shorts"
  "https://x.com/"
)
```

## Uninstall

Remove the hooks from your `~/.claude/settings.json` file.
