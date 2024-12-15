#!/usr/bin/env bash

# Define installation directories
BIN_DIR="/usr/bin"
LOCAL_BIN_DIR="/usr/bin"
SHARE_DIR="/usr/share/colorscripts"

# Ensure the script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Try using sudo." >&2
    exit 1
fi

# Remove existing installation if present
echo "Removing previous installation, if any..."
rm -rf "${SHARE_DIR}"
rm -f "${BIN_DIR}/colorscript"
rm -f "${LOCAL_BIN_DIR}/colorscript"

# Create necessary directories
echo "Creating directories..."
mkdir -p "${SHARE_DIR}"

# Copy files to their respective locations
echo "Copying files..."
cp -r ./scripts/* "${SHARE_DIR}/"
cp ./colorscript "${BIN_DIR}/colorscript"
cp ./colorscript "${LOCAL_BIN_DIR}/colorscript"

# Ensure the colorscript file is executable
chmod +x "${BIN_DIR}/colorscript"
chmod +x "${LOCAL_BIN_DIR}/colorscript"

echo "Installation completed successfully!"
