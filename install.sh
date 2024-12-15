#!/usr/bin/env bash

# define installation directories
BIN_DIR="/usr/bin"
LOCAL_BIN_DIR="/usr/local/bin"
SHARE_DIR="/usr/share/colorscripts"

# ensure the script is run as root
# if [[ $EUID -ne 0 ]]; then
    # echo "[!] this script must be run as root. Try using sudo." >&2
    # exit 1
# fi

# remove existing installation if present
echo "[→] removing previous installation, if any..."
sudo rm -rf "${SHARE_DIR}"
sudo rm -f "${BIN_DIR}/colorscript"
sudo rm -f "${LOCAL_BIN_DIR}/colorscript"

# create necessary directories
echo "[→] creating directories..."
sudo mkdir -p "${SHARE_DIR}"

# copy files to their respective locations
echo "[→] copying files..."
sudo cp -rf ./scripts/* "${SHARE_DIR}/"
sudo cp ./colorscript "${BIN_DIR}/colorscript"
sudo cp ./colorscript "${LOCAL_BIN_DIR}/colorscript"

# ensure the colorscript file is executable
echo "[→] setting executable permissions..."
chmod +x "${BIN_DIR}/colorscript"
chmod +x "${LOCAL_BIN_DIR}/colorscript"

echo "[*] installation completed successfully!"
