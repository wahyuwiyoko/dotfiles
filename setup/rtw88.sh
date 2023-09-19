#!/bin/sh

# Source: https://github.com/lwfinger/rtw88

# Make sure update the repository and install build packages
# And reboot the system after install the packages
# sudo apt update
# sudo apt install make gcc linux-headers-$(uname -r) build-essential git

# Clone the repository
git clone https://github.com/lwfinger/rtw88.git "$HOME/downloads/rtw88"

# Go to the directory
cd "$HOME/downloads/rtw88" || exit

# Build the module
make

# Install the module to the kernel
sudo make install

# Unload the core module and load the rtl8723du module
sudo modprobe -r rtw_core
sudo modprobe rtw_8723du
