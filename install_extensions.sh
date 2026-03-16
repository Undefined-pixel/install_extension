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
failed_extensions=()
for extension in "${extensions[@]}"; do
    echo "Installing: $extension"
    output=$(code --install-extension "$extension" 2>&1)
    exit_code=$?
    
    # There was an error if:
    # 1. Exit code is non-zero, OR
    # 2. Output contains "Error", "failed", or "Failed"
    if [ $exit_code -ne 0 ] || echo "$output" | grep -iE "error|failed" > /dev/null; then
        echo "✗ Failed to install: $extension"
        if [ ! -z "$output" ]; then
            echo "  Output: $output"
        fi
        failed_extensions+=("$extension")
    else
        echo "✓ Successfully installed: $extension"
    fi
    echo ""
done

echo "================================="

if [ ${#failed_extensions[@]} -eq 0 ]; then
    echo "All extensions installed successfully!"
    echo ""
    echo "Installed extensions:"
    for extension in "${extensions[@]}"; do
        echo "  - $extension"
    done
    exit 0
else
    echo "Installation completed with errors!"
    echo ""
    echo "Failed extensions:"
    for extension in "${failed_extensions[@]}"; do
        echo "  - $extension"
    done
    exit 1
fi
