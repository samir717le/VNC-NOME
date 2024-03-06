#!/bin/bash

# Install GNOME Desktop Environment
sudo apt update
sudo apt install -y ubuntu-desktop

# Install VNC Server
sudo apt install -y tigervnc-standalone-server

# Install noVNC
git clone https://github.com/novnc/noVNC.git

# Install WGET GIT FIGLET
sudo apt install -y wget git figlet

# Figlet
figlet "vnc"

# Start VNC Server with GNOME Desktop
vncserver :1 -geometry 1920x1080 -depth 24

# Start noVNC Server
cd noVNC
./utils/launch.sh --vnc localhost:5901

# Move vncstart.sh to /usr/local/bin (if needed)
mv vncstart.sh /usr/local/bin
