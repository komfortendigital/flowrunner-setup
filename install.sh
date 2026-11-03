#!/bin/bash
# FlowRunner Updater, one-line install for Mac:
#   bash -c "$(curl -fsSL https://raw.githubusercontent.com/komfortendigital/flowrunner-setup/main/install.sh)"
# Downloaded by curl, so macOS shows no "could not verify" warning.
set -e
T=$(mktemp -d)
echo "Downloading FlowRunner Updater..."
curl -fsSL -o "$T/kit.zip" https://github.com/komfortendigital/flowrunner-setup/releases/latest/download/FlowRunner-Setup-Mac.zip
unzip -q "$T/kit.zip" -d "$T"
K="$T/FlowRunner-Setup-Mac"
chmod +x "$K/flowrunner-updater-macos"
"$K/flowrunner-updater-macos" --setup --kit-config "$K/team-config.json"
rm -rf "$T"
