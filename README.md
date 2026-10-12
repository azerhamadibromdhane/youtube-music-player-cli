# Terminal YouTube Player 🎵

A lightweight terminal music player for Linux using MPV and yt-dlp.

## Features
- Search YouTube by song name
- Stream audio without opening a browser
- Lightweight command-line interface

## Requirements
- Arch-based Linux (CachyOS, Arch Linux, etc.)
- Internet connection

## Installation
Clone this repository, then run:
```bash
git clone git@github.com:azerhamadibromdhane/terminal-youtube-player.git
cd terminal-youtube-player
chmod +x install.sh
./install.sh
```

The installer installs missing MPV and yt-dlp dependencies and copies the player to `~/.local/bin`.

## Usage
```bash
play interstellar main theme
play never gonna give you up
```

## Uninstall
```bash
rm ~/.local/bin/play
```

## License
MIT
