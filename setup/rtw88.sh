#!/bin/sh

# https://github.com/lwfinger/rtw88

# Make sure these build packages are installed:
# `make gcc linux-headers-$(uname -r) build-essential git`

# Reboot after install the packages
# sudo apt update
# sudo apt install make gcc linux-headers-$(uname -r) build-essential git

# Clone the repository
git clone https://github.com/lwfinger/rtw88.git "$HOME/downloads/rtw88"

# Go to the directory
cd "$HOME/downloads/rtw88" || exit

# Build the module
make

# Install the module
sudo make install

# Load core and rtl8723du module
sudo modprobe -r rtw_core
sudo modprobe rtw_8723du
