#!/usr/bin/env bash
# Setup script for tmux configuration

set -e

TMUX_CONFIG_DIR="$HOME/.config/tmux"
TPM_DIR="$TMUX_CONFIG_DIR/plugins/tpm"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v tmux &> /dev/null; then
    echo "Installing tmux..."
    sudo apt install -y tmux
else
    echo "tmux is already installed."
fi

echo "Setting up tmux configuration..."

mkdir -p "$TMUX_CONFIG_DIR"
cp "$SCRIPT_DIR/tmux.conf" "$TMUX_CONFIG_DIR/tmux.conf"
echo "Copied tmux.conf to $TMUX_CONFIG_DIR/tmux.conf"

echo "Installing Tmux Plugin Manager (TPM)..."

if [ -d "$TPM_DIR" ]; then
    echo "TPM already installed at $TPM_DIR"
else
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
    echo "TPM installed successfully!"
fi

echo ""
echo "Setup complete!"
echo "Start tmux and press 'C-Space I' to install plugins."
