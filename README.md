# VS Code Extension Installer

Bash script to install three Python-related VS Code extensions.

## Extensions Installed

- **ms-python.python** - Microsoft Python extension (v2026.2)
- **charliermarsh.ruff** - Ruff Python linter and formatter
- **ms-python.vscode-pylance** - Pylance language server

## Prerequisites

- macOS with VS Code installed
- VS Code must be accessible via the `code` command in your terminal
- If the `code` command is not available, install it through VS Code:
  1. Open VS Code
  2. Press `Cmd + Shift + P`
  3. Search for "Shell Command: Install 'code' command in PATH"

## Usage

### Method 1: Direct download and execute with curl
```bash
curl https://raw.githubusercontent.com/Undefined-pixel/install_extension/main/install_extensions.sh | bash
```

### Method 2: Direct download and execute with wget
```bash
wget -qO- https://raw.githubusercontent.com/Undefined-pixel/install_extension/main/install_extensions.sh | bash
```

### Method 3: Run from the script location
```bash
./install_extensions.sh
```

### Method 4: Run from any location
```bash
/Users/v2cqddc/repo/mac_exentsion_helper/install_extensions.sh
```

## What the script does

1. Validates each extension installation
2. Provides clear feedback for successful/failed installations
3. Exits with error code if any installation fails
4. Displays a summary of installed extensions

## Output Example

```
Installing VS Code Extensions...
=================================
Installing: ms-python.python
✓ Successfully installed: ms-python.python

Installing: charliermarsh.ruff
✓ Successfully installed: charliermarsh.ruff

Installing: ms-python.vscode-pylance
✓ Successfully installed: ms-python.vscode-pylance

=================================
All extensions installed successfully!

Installed extensions:
  - ms-python.python
  - charliermarsh.ruff
  - ms-python.vscode-pylance
```

## Troubleshooting

- **Command not found**: Ensure the `code` command is installed in your PATH
- **Permission denied**: Run `chmod +x install_extensions.sh` to make it executable
- **Installation fails**: Check your internet connection and VS Code is not running in restricted mode
