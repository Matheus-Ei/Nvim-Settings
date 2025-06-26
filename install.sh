#!/bin/bash

echo "Starting Neovim configuration setup for Arch Linux..."

echo "Updating package lists and installing dependencies..."
sudo pacman -Syu --noconfirm --needed git ripgrep fd curl unzip fontconfig neovim

NVIM_CONFIG_DIR="$HOME/.config/nvim"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

echo "Creating new Neovim configuration directory: $NVIM_CONFIG_DIR"
if mkdir -p "$NVIM_CONFIG_DIR"; then
    echo "Neovim configuration directory created."
else
    echo "Failed to create Neovim configuration directory. Please check permissions."
    exit 1
fi


echo "Copying all files from $SCRIPT_DIR to $NVIM_CONFIG_DIR..."
if cp -R "$SCRIPT_DIR/." "$NVIM_CONFIG_DIR/"; then
    echo "Configuration files copied successfully."
else
    echo "Failed to copy configuration files. Please check permissions or if the source directory is correct."
    exit 1
fi


echo "Installing FiraCode Nerd Font..."
FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

TEMP_DIR=$(mktemp -d)
echo "Downloading FiraCode Nerd Font..."
if curl -Lo "$TEMP_DIR/FiraCode.zip" "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip"; then
    echo "Download complete. Unzipping..."
    if unzip -o "$TEMP_DIR/FiraCode.zip" -d "$FONT_DIR"; then
        echo "Font unzipped. Updating font cache..."
        fc-cache -fv
        echo "FiraCode Nerd Font installed and cache updated."
    else
        echo "Failed to unzip FiraCode Nerd Font."
    fi
else
    echo "Failed to download FiraCode Nerd Font. Check your internet connection or the URL."
fi
rm -rf "$TEMP_DIR"
