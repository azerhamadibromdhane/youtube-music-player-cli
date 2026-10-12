#!/usr/bin/env bash
set -euo pipefail

if ! command -v pacman >/dev/null 2>&1; then
    echo "Error: Arch-based Linux required." >&2
    exit 1
fi

missing=()
for dep in mpv yt-dlp; do
    command -v "$dep" >/dev/null 2>&1 || missing+=("$dep")
done

if ((${#missing[@]})); then
    sudo pacman -S --needed "${missing[@]}"
fi

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
install_dir="$HOME/.local/bin"
mkdir -p "$install_dir"
install -m 755 "$script_dir/play" "$install_dir/play"

if [[ ":$PATH:" != *":$install_dir:"* ]]; then
    echo "Add ~/.local/bin to your PATH if play is not found."
fi

echo "Installed! Usage: play <song name>"
