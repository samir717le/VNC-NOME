#!/bin/bash
    # Install GNOME Desktop Environment
    sudo apt update
    sudo apt install -y ubuntu-desktop

    # Install VNC Server
    sudo apt install -y tigervnc-standalone-server

    # Install noVNC
    git clone https://github.com/novnc/noVNC.git

    # Install WGET GIT FIGLET
    sudo apt install -y wget get figlet
   #Figlet
	figlet "vnc"
    # Start GNOME with VNC and noVNC
    vncstart
    # Start VNC Server with GNOME Desktop
    vncserver :1 -geometry 1920x1080 -depth 24

    # Start noVNC Server
    cd /path/to/noVNC
    ./utils/launch.sh --vnc localhost:5901

mv vncstart.sh /usr/local/bin
