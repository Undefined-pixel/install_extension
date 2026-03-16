#!/bin/bash

# VS Code Extension Installer Script
# This script installs the three Python-related extensions:
# - ms-python.python (v2026.2)
# - charliermarsh.ruff
# - ms-python.vscode-pylance

set -e  # Exit on error

echo "Installing VS Code Extensions..."
echo "================================="

# Array of extensions to install
extensions=(
    "ms-python.python"
    "charliermarsh.ruff"
    "ms-python.vscode-pylance"
)

# Install each extension
for extension in "${extensions[@]}"; do
    echo "Installing: $extension"
    code --install-extension "$extension"
    if [ $? -eq 0 ]; then
        echo "✓ Successfully installed: $extension"
    else
        echo "✗ Failed to install: $extension"
        exit 1
    fi
    echo ""
done

echo "================================="
echo "All extensions installed successfully!"
echo ""
echo "Installed extensions:"
for extension in "${extensions[@]}"; do
    echo "  - $extension"
done
